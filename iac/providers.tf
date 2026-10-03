terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "4.6.0"
    }
  }
}

provider "docker" {
  # Configuration options
}

# Pulls the image
resource "docker_image" "httpd" {
  name = "httpd:alpine"
}

# Create a container
resource "docker_container" "foo" {
  image = docker_image.httpd.image_id
  name  = "foo"
}