FROM node:18-alpine

RUN apk add --no-cache python3 make g++ bash && \
    npm install -g n8n

WORKDIR /data

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 5678

ENTRYPOINT ["/start.sh"]