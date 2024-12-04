FROM n8nio/n8n:latest

# Base de datos - usando la URL pública para mejor conectividad
ENV DATABASE_URL="postgresql://postgres:LmlHRRyBQKKGqAWOoUINpWJZHwpApUbG@junction.proxy.rlwy.net:17677/railway"

# Configuración básica de n8n
ENV N8N_PORT=5678
ENV NODE_ENV=production
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=${N8N_BASIC_AUTH_USER}
ENV N8N_BASIC_AUTH_PASSWORD=${N8N_BASIC_AUTH_PASSWORD}

# Configuración de seguridad y encriptación
ENV N8N_ENCRYPTION_KEY=${N8N_ENCRYPTION_KEY}
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

EXPOSE 5678
