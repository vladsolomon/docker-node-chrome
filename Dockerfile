FROM docker:dind
RUN apk add --no-cache \
            nodejs \
            npm

# install chromium
RUN apk -U --no-cache \
    --allow-untrusted add \
    chromium

ENV CHROME_BIN=/usr/bin/chromium-browser
ENV CHROME_PATH=/usr/lib/chromium/

WORKDIR /usr/src/app
CMD ["npm", "start"]
