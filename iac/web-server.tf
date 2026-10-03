# Pulls the image
resource "docker_image" "nginx" {
  name = "nginx:alpine"
}

# Create a container
resource "docker_container" "foo" {
  image = docker_image.nginx.image_id
  name  = "web-server"
  ports{ 
    internal = 80
    external = 3000  
  }

}