

exports.main = exports.help = (config) ->
    console.log config.appName + " " + config.appVersion + """


usage: 
    npm start --version
    npm start --help
    npm start <app> --help
    npm start <app> [app args...]

apps:
    help - print this usage information
    server - run the brain server
    train - run training on a given dataset
"""