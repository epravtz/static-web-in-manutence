FROM nginx:alpine

# Define diretório
WORKDIR /usr/share/nginx/html

# Remove conteúdo default
RUN rm -rf ./*

# Copia arquivos estáticos
COPY index.html style.css script.js 11500091.jpg ./

# Adiciona script de ambiente
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
