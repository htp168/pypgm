#!/bin/sh
cd $PWD
nginx &
source $PWD/bin/activate
if [ $? -eq 0 ]; then
    uwsgi --ini $UWSGI_INI 
else
    echo "Enviroment is not valiable, please check it"
    nginx -s stop
fi;
