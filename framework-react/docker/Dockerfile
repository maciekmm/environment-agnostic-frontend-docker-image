FROM node:15.6 as build

WORKDIR /src

COPY package.json /src

RUN npm install

COPY . /src

RUN npm run build

FROM nginx:1.19-alpine

EXPOSE 80

RUN rm -rf /usr/share/nginx/html/*
COPY --from=build /src/build /usr/share/nginx/html/

COPY /docker/nginx.conf /etc/nginx/nginx.conf
COPY /docker/50-substitute-env-variables.sh /docker-entrypoint.d/
