require 'socket'

#create listen socket
server = TCPServer.new(8888)

Socket.accept_loop(server) do | connection|
	connection.close
end

