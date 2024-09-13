# **Launching Nginx Webserver with Terraform, Docker, and Let's Encrypt**

In this project, I deploy an Nginx web server using the popular tools **Terraform** and **Docker**. I also enable HTTPS connection for the web server using the automatic certification tool **Let's Encrypt**.

### **Project Structure Overview**
In the main directory, you'll find **3 Terraform configuration files**:
- `providers.tf`
- `docker.tf`
- `variables.tf`

The main task of these files is to launch a **built Docker image** and container using **Terraform**.

### **Docker Image Details**
The **built Docker image** is based on the **Nginx image** and prints a **personalized message** on launch (configured in `index.html`). You can find the setup details in the **Dockerfile**.

### **Enabling HTTPS with Let's Encrypt**
In another part of the project (currently a **work in progress**), I am implementing **HTTPS encryption** for the web traffic using **Let's Encrypt**.

- **Let's Encrypt** uses a software client, **Certbot**, to obtain and install **SSL/TTLS certificates** on web applications like Nginx.
- The `docker-compose.yaml` file defines **two services** for the web application:
  - **web**: runs on both **HTTP** and **HTTPS**
  - **certbot**: manages the **SSL/TLS certificates**.
  
- The **nginx.conf** file, located within the `/nginx` directory, provides server configurations for two server blocks:
  - **HTTP**
  - **HTTPS**
  
  It is currently scripted to provide **HTTPS redirection** for the domain names:
  - `automationisfun.com`
  - `www.automationisfun.com`

### **CI/CD Automation with GitHub Actions**
Finally, I am in the process of **automating the workflow** using **GitHub Actions**. The `terraform.yaml` file, located within the `.github/workflows` directory, is designed to trigger whenever a code push is made to GitHub.

