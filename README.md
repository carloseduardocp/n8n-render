# n8n Render Supabase Template

Este repositório foi criado para permitir o deploy funcional do n8n no Render, usando Supabase (PostgreSQL) como banco de dados externo.

## Como usar

1. Faça fork deste repositório.
2. Crie um Web Service no Render usando o modo **Docker**.
3. Adicione as seguintes variáveis de ambiente no Render:

- DB_TYPE=postgresdb
- DB_POSTGRESDB_HOST= (host do Supabase)
- DB_POSTGRESDB_PORT=5432
- DB_POSTGRESDB_DATABASE=postgres
- DB_POSTGRESDB_USER=postgres
- DB_POSTGRESDB_PASSWORD= (senha criada)
- N8N_BASIC_AUTH_ACTIVE=true
- N8N_BASIC_AUTH_USER=admin
- N8N_BASIC_AUTH_PASSWORD= (sua senha)
- N8N_HOST=0.0.0.0
- N8N_PORT=5678
- WEBHOOK_URL=https://[seu-subdomínio].onrender.com/
- GENERIC_TIMEZONE=America/Sao_Paulo

4. Manual Deploy > Deploy latest commit

Após o deploy, acesse o painel n8n usando o endereço gerado pela Render.