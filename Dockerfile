FROM node:18-alpine

# Instala dependências do sistema
RUN apk add --no-cache python3 make g++ && \
    npm install -g n8n

# Cria diretório de trabalho
WORKDIR /data

# Define variáveis de ambiente necessárias
ENV DB_TYPE=postgresdb \
    DB_POSTGRESDB_HOST=${DB_POSTGRESDB_HOST} \
    DB_POSTGRESDB_PORT=${DB_POSTGRESDB_PORT} \
    DB_POSTGRESDB_DATABASE=${DB_POSTGRESDB_DATABASE} \
    DB_POSTGRESDB_USER=${DB_POSTGRESDB_USER} \
    DB_POSTGRESDB_PASSWORD=${DB_POSTGRESDB_PASSWORD} \
    N8N_BASIC_AUTH_ACTIVE=${N8N_BASIC_AUTH_ACTIVE} \
    N8N_BASIC_AUTH_USER=${N8N_BASIC_AUTH_USER} \
    N8N_BASIC_AUTH_PASSWORD=${N8N_BASIC_AUTH_PASSWORD} \
    N8N_HOST=0.0.0.0 \
    N8N_PORT=5678 \
    GENERIC_TIMEZONE=${GENERIC_TIMEZONE}

EXPOSE 5678

# Comando para rodar o n8n
CMD ["npx", "n8n"]