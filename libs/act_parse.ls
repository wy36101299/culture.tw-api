/*
	Activity modules - dealing with activity filter params

	- We are using singleton pattern for creating some public methods for data filering usages
	- Why singleton?
		 * used for namespacing
		 * reduces the number of global variables, and avoid private variables being polluted
		 * organize code in a consistent manner
		 * increase readability and maintainabilities for functions

 */



/*
	initialize filter object
 */

ActParse = ->
	# private variables

	# private methods
	
	## convert raw data to JSON data
	_toJSON: (raw) ->
		data = JSON.parse raw
		data
	,

	## stringify JSON data to string
	_toString: (json_val) ->
		string = JSON.stringify json_val
		string

	# public methods
	
	version: (data) ->
		_info = {}
		_info.version = this._toJSON data .version
		this._toString _info
	,

	uid: (data) ->
		_info = {}
		_info.uid = this._toJSON data .uid
		this._toString _info
	,

	title: (data) ->
		_info = {}
		_info.title = this._toJSON data .title
		this._toString _info
	,

	basicInfo: (data) ->
		_info = {}
		_info.version =  this._toJSON data .version
		_info.uid = this._toJSON data .uid
		_info.title = this._toJSON data .title
		this._toString _info
	,

	showInfoLen: (data) ->
		_info = {}
		_info.length = this._toJSON.showInfo.length()
		this._toString _info
	,
	showInfo: (data) ->
		_info = {}
		_info.showInfo = this._toJSON.showInfo
		this._toString _info
	

/*
	Export filter object
 */


module.exports = new ActParse
