/*
	modules dependencies
 */
http = require \http
fs = require \fs
parse = require \./libs/act_parse.ls




/* 
	variables
 */
file = \sample/sample1.json
# reading file from sample
raw = fs.readFileSync file, 'utf8'


requestListener = (req, res) ->

	# request URL
	url = req.url

	# path to different URL
	if url === \/version 
		res.writeHead 200, {"Content-Type": "application/json"}
		res.end parse.version raw
	else if url === \/uid
		res.writeHead 200
		res.end parse.uid raw
	else if url === \/title
		res.end parse.title raw


# create a http server
server = http.createServer requestListener

# listen to 8080 port
server.listen(8080)
console.log "listen to port 8080"