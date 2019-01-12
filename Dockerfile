FROM docker:dind
RUN apk add --no-cache \
            nodejs \
            npm

RUN apk add --no-cache -y --no-install-recommends chromium

ENV CHROME_BIN=chromium

WORKDIR /usr/src/app
CMD ["npm", "start"]
