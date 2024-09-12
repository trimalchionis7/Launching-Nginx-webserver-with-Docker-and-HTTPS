# Build Docker image using the Dockerfile and add personalised index.html
resource "docker_image" "cgi-nginx-image" {
  name = "cgi-nginx-image:latest"

  build {
    path       = "${path.module}"
    dockerfile = "${path.module}/Dockerfile"
  }
}

# Create Docker container
resource "docker_container" "cgi-nginx-container" {
  name  = "cgi-nginx-container"
  image = docker_image.cgi-nginx-image.latest

  ports {
    internal = 80
    external = 8080
  }
}