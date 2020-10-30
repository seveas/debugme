#!/bin/bash

set -e
set -x

for pyversion in 2.7 3.{4..9} latest; do
    for test in $(ls tests); do
        docker run -v $(pwd):/whelk -e PYTHONPATH=/whelk -e TESTING_DEBUGME=1 python:$pyversion python /whelk/tests/$test
    done
done
