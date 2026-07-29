FROM nginx:alpine
LABEL org.opencontainers.image.title="codyssey-E1-1-web"
LABEL org.opencontainers.image.version="1.0"
ENV APP_ENV=dev
COPY app/ /usr/share/nginx/html/
HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget -qO- http://localhost/ || exit 1
EXPOSE 80
