http = require \http
fs = require \fs
url = \http://cloud.culture.tw/frontsite/trans/SearchShowAction.do?method=doFindTypeJ&category=6
file = \../data/parse.json
filterData = require \../modules/filter.ls

request = http.get url, (res) ->
	data = ''
	res.on \data, (chunk) ->
		data += chunk

	res.on \end,  ->
		fs.writeFileSync file, data 

		console.log "Done! Downloading files go and see " + file

		# console.log "Start Loading data..."

		# raw_data = fs.readFileSync file, 'utf8'

		# console.log "Successfully download reading the data from " + file
		# console.log "Parsing into JSON data"
		
		# json_data = JSON.parse raw_data

