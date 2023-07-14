import os  

class Config(object):
    USER_NAME = os.environ.get('USER_NAME', 'bob')
    USER_WORK = os.environ.get('USER_WORK', 'xyz company')