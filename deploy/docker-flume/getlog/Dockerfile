FROM alpine:3.10
MAINTAINER lyz05 <liuyuanzhe0515@gmail.com>

RUN echo http://mirrors.aliyun.com/alpine/v3.10/main/ > /etc/apk/repositories && \
    echo http://mirrors.aliyun.com/alpine/v3.10/community/ >> /etc/apk/repositories
RUN apk update && apk upgrade
RUN apk --no-cache add ca-certificates bash wget && \
    mkdir -p /tmp/nginx-access-log && \
    mkdir -p /code

VOLUME /tmp/nginx-access-log
COPY . /code/
WORKDIR /code

CMD ["/bin/bash","/code/getlog.sh"]
