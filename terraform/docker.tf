# Pull Nginx image from Docker
resource "docker_image" "nginx" {
  name = "nginx:latest"
  build {
    path = "."
    dockerfile = "./Dockerfile"
  }
}

# Create Docker container
resource "docker_container" "cgi-nginx-container" {
  name  = "cgi-nginx-container"
  image = docker_image.nginx.latest

  ports {
    internal = 80
    external = 8080
  }
}