#!/usr/bin/env bash


function development {
    npm install --dev # 
    npm start
}
function run_prod {
    #npm start command here
}


if [ $# -gt 0 ]
then
    if [ $1 == "development" ]
    then
        development
    else
        echo "Not a valid argument"
        exit 127
    fi
else
    run_prod
fi


exit 0