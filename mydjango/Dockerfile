FROM tiangolo/uwsgi-nginx:python3.8-alpine 

COPY ./requirements.txt /app/requirements.txt

RUN sed -i 's|dl-cdn.alpinelinux.org|mirrors.aliyun.com|g' /etc/apk/repositories && \
    apk update && apk add --no-cache --virtual build-dependencies gcc g++ mariadb-dev && \
    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip install --no-cache-dir --upgrade -r /app/requirements.txt && \
    apk del build-dependencies

COPY $PWD /app
