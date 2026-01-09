tạo key trong config/core

    openssl genrsa -out private_key.pem 4096

    openssl pkey -in private_key.pem -traditional -out private_key_rsa.pem
    head -n 1 private_key_rsa.pem

    openssl req -new -x509 -key private_key.pem -out root.crt -days 3650 -subj "/CN=harbor-token"

    cp -r root.crt ../registry