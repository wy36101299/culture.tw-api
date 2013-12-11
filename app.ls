/*
	modules dependencies
 */
http = require \http
requestListener = (req, res) ->
	res.writeHead 200
	res.end 'hello world\n'


# create a http server
server = http.createServer requestListener

# listen to 8080 port
server.listen(8080)
console.log "listen to port 8080"