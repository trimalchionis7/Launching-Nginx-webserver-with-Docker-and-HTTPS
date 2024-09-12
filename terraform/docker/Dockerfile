# Use Nginx as base image
FROM nginx:latest

# Use CGI greeting as index page
COPY index.html /usr/share/nginx/html/index.html

# Copy Nginx configuration with HTTPS redirection
COPY /nginx/nginx.conf /etc/nginx/nginx.conf

# Expose ports 80, 443
EXPOSE 80 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]