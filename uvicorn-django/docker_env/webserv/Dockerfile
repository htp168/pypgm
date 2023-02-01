FROM python:3.8-alpine3.11

ENV INSTALL_PATH="docker_env/webserv"

COPY $INSTALL_PATH/requirements.txt /tmp/requirements.txt

RUN sed -i 's|dl-cdn.alpinelinux.org|mirrors.aliyun.com|g' /etc/apk/repositories && apk update
RUN apk add --no-cache --virtual .build-deps gcc libc-dev make \
    && pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install --upgrade pip \
    && pip install --no-cache-dir -r /tmp/requirements.txt \
    && apk del .build-deps gcc libc-dev make

COPY $INSTALL_PATH/start.sh /start.sh
RUN chmod +x /start.sh

COPY $INSTALL_PATH/gunicorn_conf.py /gunicorn_conf.py

COPY $INSTALL_PATH/start-reload.sh /start-reload.sh
RUN chmod +x /start-reload.sh

COPY $INSTALL_PATH/app /app
WORKDIR /app/

ENV PYTHONPATH=/app

EXPOSE 80

# Run the start script, it will check for an /app/prestart.sh script (e.g. for migrations)
# And then will start Gunicorn with Uvicorn
CMD ["/start.sh"]
