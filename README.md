# 🛠️ LAb — Página de Manutenção em Container 🚧

Uma página estática 🧱 simples, leve e responsiva 🌐 para mostrar quando seu site é um lab para devops 🛑. Totalmente containerizada com Docker 🐳.# Static Web in Maintenance

Este projeto é uma página web estática para laboratório DevOps, com suporte a customização dinâmica de título e mensagem via variáveis de ambiente, ideal para uso em containers Docker com NGINX.

## Funcionalidades

- Página de manutenção personalizável
- Título e mensagem definidos por variáveis de ambiente (`TITULO` e `MENSAGEM`)
- Rodapé fixo com créditos e ano
- Pronto para deploy em Docker/NGINX

## Como usar

### 1. Build da imagem Docker

```sh
docker build -t static-web-in-manutence .
```

### 2. Executando com variáveis de ambiente

```sh
docker run -e TITULO="Minha Página" -e MENSAGEM="Voltamos em breve!" -p 8080:80 static-web-in-manutence
```

Acesse em [http://localhost:8080](http://localhost:8080)

## Estrutura dos arquivos

- `index.html` — Página principal
- `style.css` — Estilos
- `script.js` — Lógica para ler variáveis de ambiente
- `docker-entrypoint.sh` — Script de inicialização para gerar `env.js`
- `env.js` — Gerado dinamicamente com as variáveis de ambiente

## Personalização

Basta definir as variáveis de ambiente `TITULO` e `MENSAGEM` ao rodar o container.

## Licença

MIT

---

© 2025