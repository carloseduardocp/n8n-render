#!/bin/bash

export DB_TYPE=postgresdb
export DB_POSTGRESDB_CONNECTION="${DB_POSTGRESDB_CONNECTION}"
export N8N_BASIC_AUTH_ACTIVE="${N8N_BASIC_AUTH_ACTIVE}"
export N8N_BASIC_AUTH_USER="${N8N_BASIC_AUTH_USER}"
export N8N_BASIC_AUTH_PASSWORD="${N8N_BASIC_AUTH_PASSWORD}"
export N8N_HOST="0.0.0.0"
export N8N_PORT="5678"
export GENERIC_TIMEZONE="${GENERIC_TIMEZONE}"
export WEBHOOK_URL="${WEBHOOK_URL}"

exec npx n8n