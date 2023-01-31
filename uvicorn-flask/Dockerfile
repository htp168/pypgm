FROM tiangolo/uwsgi-nginx:python3.8-alpine

COPY $PWD /app

RUN sed -i 's|dl-cdn.alpinelinux.org|mirrors.aliyun.com|g' /etc/apk/repositories && \
    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip install --no-cache-dir --upgrade -r /app/requirements.txt

