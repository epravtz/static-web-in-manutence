#!/bin/sh


# Remove caracteres perigosos (", \, /, $, `, etc.) para evitar injeção
SANITIZED_MSG=$(printf %s "$MENSAGEM" | sed 's/["\\]/\\&/g' | sed 's/</\&lt;/g; s/>/\&gt;/g')
SANITIZED_TITULO=$(printf %s "$TITULO" | sed 's/["\\]/\\&/g' | sed 's/</\&lt;/g; s/>/\&gt;/g')


# Cria env.js seguro
echo "window.MENSAGEM = \"$SANITIZED_MSG\";" > /usr/share/nginx/html/env.js
echo "window.TITULO = \"$SANITIZED_TITULO\";" >> /usr/share/nginx/html/env.js

# Inicia o NGINX
exec nginx -g 'daemon off;'