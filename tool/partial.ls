/*
	separate to partial samples
 */

fs = require \fs
path = require \path

write_file = path.resolve \./sample/sample1.json
file = path.resolve \./data/parse.json

raw_data = fs.readFileSync file, 'utf8'

console.log "Successfully reading the data from " + file
console.log "Parsing into JSON data"

json_data = JSON.parse raw_data
stringify_json = JSON.stringify json_data[0]

fs.writeFileSync write_file, stringify_json
console.log "Write into file " + write_file