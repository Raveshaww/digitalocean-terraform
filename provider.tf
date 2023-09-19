terraform {
  required_version = ">=1.5.7"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "2.3.2"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

provider "cloudinit" {

}