# n8n Render (base testada com sucesso)

Repositório gerado com base no projeto "Persona Nutrição e Exercícios", onde a configuração com Supabase e Render funcionou corretamente.

## Como usar

1. Faça fork deste repositório no GitHub
2. Crie um Web Service no Render (modo Docker)
3. Adicione as variáveis de ambiente:

- DB_POSTGRESDB_CONNECTION: postgresql://usuario:senha@host:5432/postgres
  → Lembre-se de codificar @ como %40 na senha
- N8N_BASIC_AUTH_ACTIVE: true
- N8N_BASIC_AUTH_USER: admin
- N8N_BASIC_AUTH_PASSWORD: sua_senha
- N8N_HOST: 0.0.0.0
- N8N_PORT: 5678
- GENERIC_TIMEZONE: America/Sao_Paulo
- WEBHOOK_URL: https://[seu_subdomínio].onrender.com/

4. Manual Deploy > Deploy latest commit