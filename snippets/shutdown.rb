require 'socket'

#create server socket
server = Socket.new(:INET,:STREAM)
addr = Socket.pack_sockaddr_in(8888,'0.0.0.0')
server.bin(addr)
server.listen(128)
connection,_ = server.accept

#create connection duplication
copy = connection.dup

#close all dup communicate
connection.shutdown

#close initial conn.dup will close in GC
connection.close
