# ftp_server.py
from pyftpdlib.authorizers import DummyAuthorizer
from pyftpdlib.handlers import FTPHandler
from pyftpdlib.servers import FTPServer

authorizer = DummyAuthorizer()
authorizer.add_user("blondel", "password123", ".", perm="elradfmw")  # '.' = current folder

handler = FTPHandler
handler.authorizer = authorizer

server = FTPServer(("0.0.0.0", 21), handler)
print("FTP Server started on port 21")
server.serve_forever()

#pip install pyftpdlib
#python ftp_server.py
