# Dockerfile para produção Vite + TypeScript
FROM nginx:alpine AS production
WORKDIR /usr/share/nginx/html

# Copy static site
COPY dist/ .

# Copy custom nginx configuration to enable SPA routing (fallback to index.html)
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]