FROM nginx:mainline-bookworm
LABEL Author="Luis Cruz"

# Instala o módulo OpenTelemetry do nginx (disponível no repo oficial nginx.org)
RUN apt-get update && \
    apt-get install -y --no-install-recommends nginx-module-otel && \
    rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY css  /usr/share/nginx/html/css
COPY font /usr/share/nginx/html/font
COPY img  /usr/share/nginx/html/img
COPY js   /usr/share/nginx/html/js
COPY index.html /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
