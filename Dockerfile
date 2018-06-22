FROM docker.io/node:8-stretch

RUN apt-get update \
    && apt-get install -y --no-install-recommends chromium

ENV CHROME_BIN=chromium

WORKDIR /usr/src/app
CMD ["npm", "start"]