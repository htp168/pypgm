FROM tiangolo/uwsgi-nginx:python3.8-alpine 

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY ./app /app
