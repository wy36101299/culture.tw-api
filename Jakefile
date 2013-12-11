desc("Download data from the origin...")


task("default", {async: false}, function() {
	var cmds = [
		"lsc tool/download.ls",
		"lsc tool/partial.ls"
	]

	jake.exec(cmds, {printStdout: true}, function() {
		console.log("------------------")
		console.log("finished downloading the data, and also successfully makeing a sample data. enjoy :)")
		complete();
	})
})