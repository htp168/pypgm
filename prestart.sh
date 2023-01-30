#!/bin/sh
cd $OLDPWD
nginx &
source $OLDPWD/bin/activate
if [ $? -eq 0 ]; then
    uwsgi --ini uwsgi.ini
fi;
