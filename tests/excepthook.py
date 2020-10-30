import sys

def testme():
    debugme_testing_sentinel = 42
    import debugme

def excepthook(typ, val, tb):
    sys.__excepthook__(typ, val, tb)
    import debugme
sys.excepthook = excepthook

testme()
