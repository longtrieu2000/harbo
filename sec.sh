gen() { openssl rand -hex 16; }
pw() { openssl rand -hex 12; }

sudo tee .env >/dev/null <<EOF
REGISTRY_HTTP_SECRET=$(gen)
CORE_SECRET=$(gen)
JOBSERVICE_SECRET=$(gen)
CORE_KEY=$(gen)
POSTGRESQL_PASSWORD=$(pw)
HARBOR_ADMIN_PASSWORD=$(pw)
REGISTRY_CREDENTIAL_USERNAME=harbor_registry_user
REGISTRY_CREDENTIAL_PASSWORD=$(pw)
EXT_ENDPOINT=http://reg.mydomain.com
EOF