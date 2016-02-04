FROM node

MAINTAINER Alistair Stead <alistair_stead@me.com>

ENV NODE_ENV production
ENV NODE_PORT 8080
ENV dir /src

WORKDIR ${dir}

ADD . $dir
RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
