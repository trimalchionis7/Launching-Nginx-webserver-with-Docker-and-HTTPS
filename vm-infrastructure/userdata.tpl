#!/bin/bash

# Install Nginx
sudo yum install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Output the personalised CGI greeting
cat <<EOL > /tmp/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome!</title>
</head>
<body>
    <h1>Hello from CGI!</h1>
    <p>This is your Nginx web server, built with Terraform!</p>
</body>
</html>
EOL

# Move the temporary index.html to nginx html directory and grant permissions
sudo mv /tmp/index.html /usr/share/nginx/html/index.html
sudo chown nginx:nginx /usr/share/nginx/html/index.html

# Install Docker
sudo yum install -y docker
sudo systemctl enable docker
sudo systemctl start docker

# Run Nginx with Docker
sudo chown $USER /var/run/docker.sock
sudo docker run -d -p 80:80 nginx