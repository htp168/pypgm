#!/bin/sh
pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
# if [ $? -eq 0 ]; then
#     nginx &
#     uwsgi --ini $UWSGI_INI 
# else
#     echo "python env is not valiable"
# fi
