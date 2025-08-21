import sys
sys.path.append("/home/ubuntu/gemini/poc-01")
from hello import get_greeting

def test_get_greeting():
    assert get_greeting() == "hello rockie, welcome to ur application"
