# Use Nginx as base image
FROM nginx:latest

# Use CGI greeting as index page
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80