# IMG
FROM node:slim

# WHO
MAINTAINER boxu@yvhai.com


# User Interface
ENV \
    TZ=Asia/Shanghai


# Common Install
RUN date \
    && ln -fs /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && npm install -g cnpm --registry=https://registry.npm.taobao.org \
    && mkdir /app

WORKDIR /app

# Sub Future do
ONBUILD COPY ./package.json /app
ONBUILD RUN [ "cnpm", "install" ]
ONBUILD COPY . /app/

CMD [ "npm", "start" ]
