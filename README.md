# n8n Railway Deployment

Configuration files for deploying n8n on Railway.app.

## Configuration Required
After deploying to Railway, you need to:

1. Add PostgreSQL database from Railway dashboard
2. Set these environment variables:
   - N8N_BASIC_AUTH_USER
   - N8N_BASIC_AUTH_PASSWORD

## Files
- `Dockerfile`: Contains the n8n configuration
- `docker-compose.yml`: Docker compose configuration
- `.gitignore`: Git ignore rules
