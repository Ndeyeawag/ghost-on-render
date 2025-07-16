FROM ghost:5-alpine

WORKDIR /var/lib/ghost

COPY config.production.json .
COPY content/ ./content/

ENV url=https://ghost-on-render-v9fj.onrender.com

EXPOSE 2368
