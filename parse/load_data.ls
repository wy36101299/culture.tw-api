http = require \http
fs = require \fs
url = \http://cloud.culture.tw/frontsite/trans/SearchShowAction.do?method=doFindTypeJ&category=6
file = \../data/parse.json

request = http.get url, (res) ->
	data = ''
	res.on \data, (chunk) ->
		data += chunk

	res.on \end,  ->
		fs.writeFileSync file, data 
		console.log "Done! Downloading files go and see " + file

