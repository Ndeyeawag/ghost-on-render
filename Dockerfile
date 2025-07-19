FROM ghost:5-alpine

WORKDIR /var/lib/ghost

COPY config.production.json .
COPY content/ ./content/
COPY public/ ./public/
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
