fs = require("fs")
packageInfo = require("./package.json")

settings =
    strings: [
        "function"
    ]
    booleans: [
        "help"
        "version"
    ]
    defaults:
        app: "help"

argv = require('minimist')(process.argv.slice(2), settings)

argv.app = argv._[0] || "help"
argv._ = argv._.slice(1)

argv.appName = packageInfo.name
argv.appVersion = packageInfo.version

module.exports = argv