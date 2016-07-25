# Node.js Server
# Author: doog
# Version: v0.0.2
FROM node:argon

MAINTAINER @doog

# 修改APT源
RUN cp /etc/apt/sources.list /etc/apt/sources.list_backup
ADD ./apt-sources.list /etc/apt/sources.list
RUN  apt-get clean && apt-get upgrade

# 安装CNPM
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

# 安装pm2
RUN cnpm i pm2 -g

# 开放80端口
EXPOSE 80
