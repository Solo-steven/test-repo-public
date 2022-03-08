## node image
FROM node:14-alpine AS Env
COPY . /frontend
WORKDIR /frontend
RUN npm install
RUN npm -g install @angular/cli
RUN ng build
