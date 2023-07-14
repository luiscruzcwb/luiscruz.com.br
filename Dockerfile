# Install Nginx
FROM nginx:latest
LABEL Author="Luis Cruz"
# Copy the Nginx config and files
COPY default /etc/nginx/sites-available/default
COPY css /usr/share/nginx/html/css
COPY font /usr/share/nginx/html/font
COPY img /usr/share/nginx/html/img
COPY js /usr/share/nginx/html/js
COPY index.html /usr/share/nginx/html
# Expose the port for access
EXPOSE 80/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]