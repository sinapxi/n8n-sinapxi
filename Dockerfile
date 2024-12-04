FROM n8nio/n8n:latest

ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_DATABASE=railway
ENV DB_POSTGRESDB_HOST=postgres.railway.internal
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_USER=postgres
ENV DB_POSTGRESDB_PASSWORD=${PGPASSWORD}

# Configuraciones SSL para PostgreSQL
ENV DB_POSTGRESDB_SSL=true
ENV DB_POSTGRESDB_SSL_CA=/etc/ssl/certs/ca-certificates.crt
ENV DB_POSTGRESDB_SSL_REJECT_UNAUTHORIZED=false

ENV N8N_PORT=5678
ENV NODE_ENV=production
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=${N8N_BASIC_AUTH_USER}
ENV N8N_BASIC_AUTH_PASSWORD=${N8N_BASIC_AUTH_PASSWORD}

# Otras configuraciones
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Instalar certificados SSL
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*

EXPOSE 5678
