FROM node

MAINTAINER Alistair Stead <alistair_stead@me.com>

ENV NODE_ENV development
ENV PORT 8080
ENV DEBUG *
ENV dir /src

WORKDIR ${dir}

ADD . $dir
RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
