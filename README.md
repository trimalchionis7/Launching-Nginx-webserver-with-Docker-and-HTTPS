# Launching Nginx webserver with Terraform, Docker and Letsencrypt

In this project I deploy a Nginx web server using the popular tools Terraform and Docker. I also enable HTTPS connection for the web server using the automatic certification tool Letsencrypt.

In the /terraform directory you'll find 3 Terraform configuration files - providers.tf, docker.tf, and variables.tf. The main task of these files is to launch a (built) Docker image and container using Terraform.

The built Docker image is based on the Nginx image and prints a personalised message on launch (to be found in index.html). You can see the configuration in the Dockerfile.

In another part of the project which is still a work in progress, I am implementing HTTPS encryption for the web traffic using the popular SSL/TLS certification software Letsencrypt. Letsencrypt uses a software client Certbot to obtain and install SSL/TLS certificates on web applications, such as those run on the Nginx engine. 
    The *docker-compose.yaml file defines 2 services for the web application: the web server, which runs on HTTP and HTTPS, and  certbot, which manages SSL/TLS certificates.
    The nginx.conf within the /nginx directory provides server configurations for 2 server blocks: HTTP and HTTPS. Currently it is scripted to provide HTTPS redirection for the domain names automationisfun.com and www.automationisfun.com.

Finally, I am in the progress of automating the workflow using Github Actions. The terraform.yaml file within /.github/workflows is designed to run whenever a code push is made to the terraform directory in Github.

