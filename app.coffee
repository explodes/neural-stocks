config = require("./config")

if config.version
    console.log config.appName + " " + config.appVersion
    process.exit(0)

app = undefined
try
    # load the app specified, this could error out easily
    app = require "./apps/" + config.app
catch error
    # unknown app
    console.error "Unknown app: " + config.app + "\n"
    (require "./apps/help").help(config)
    process.exit(1)
    
# run the specified app
if app
    if config.help
        app.help(config)
    else
        app.main(config)



    
