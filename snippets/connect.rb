require 'socket'

socket =  Socket.new(:INET,:STREAM)


#connect googole.com:80 
remote_addr = Socket.pack_sockaddr_in(80,'google.com')
socket.connect(remote_addr)

