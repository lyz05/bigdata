FROM python:3.6-alpine
RUN apk update \
        && apk upgrade \
        && apk add --no-cache bash \
        bash-doc \
        bash-completion \
        && rm -rf /var/cache/apk/* \
        && /bin/bash
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -i https://mirrors.aliyun.com/pypi/simple -r requirements.txt
COPY . /code/
RUN chmod +x start.sh
CMD ["/bin/bash", "start.sh"]