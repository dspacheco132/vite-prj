# Dockerfile para produção Vite + TypeScript
FROM nginx:alpine AS production
WORKDIR /usr/share/nginx/html
COPY dist/ .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]