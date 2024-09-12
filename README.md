# Launching-Nginx-webserver-with-Docker-and-HTTPS

In this project I launch a Nginx web server using Terraform, Docker and a popular automatic certification tool called Letsencrypt.

In a first step, I deploy a Nginx web server hosted on an AWS EC2 instance and launched using the Infrastructure as Code tool Terraform.

In a second step, I enable HTTPS redirection of the web traffic using Docker Compose and Letsencrypt.

In a third step, I containerise the web server using Docker.


