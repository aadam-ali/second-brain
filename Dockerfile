FROM node:25-trixie-slim AS build

RUN apt-get update -y && apt-get -y install --no-install-recommends git ca-certificates

WORKDIR /public
RUN git clone https://github.com/jackyzha0/quartz.git

WORKDIR /public/quartz
RUN npm i && npx quartz create

COPY quartz.config.ts /public/quartz/quartz.config.ts
COPY quartz.layout.ts /public/quartz/quartz.layout.ts
COPY public/ content/
COPY README.md content/index.md

RUN npx quartz build

FROM nginx:1.29.3-trixie

COPY default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /public/quartz/public/ /usr/share/nginx/html/
