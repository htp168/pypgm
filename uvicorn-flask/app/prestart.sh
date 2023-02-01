#!/bin/sh
pip install -r requirements.txt
# if [ $? -eq 0 ]; then
#     nginx &
#     uvicorn main:asgi_app --host=0.0.0.0 --port=80
# else
#     echo "python env is not valiable"
# fi
