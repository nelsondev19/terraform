terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}


# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.token_secret
}

resource "digitalocean_droplet" "web" {
  image  = var.image_os["ubuntu"]
  name   = var.name_droplet
  region = var.region_droplet["san_francisco"]
  size   = var.size_droplet
  ssh_keys = ["0e:c2:35:28:d4:9f:4b:fb:c9:c5:1c:42:72:81:92:ae"]
}
resource "digitalocean_droplet" "web2" {
  image  = var.image_os["ubuntu"]
  name   = var.name_droplet
  region = var.region_droplet["san_francisco"]
  size   = var.size_droplet
  ssh_keys = ["0e:c2:35:28:d4:9f:4b:fb:c9:c5:1c:42:72:81:92:ae"]
}