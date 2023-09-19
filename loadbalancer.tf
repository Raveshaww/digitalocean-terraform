resource "digitalocean_loadbalancer" "tf-lb-1" {
  name     = "tf-lb-1"
  region   = var.do_region
  vpc_uuid = digitalocean_vpc.terraform-vpc.id

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 80
    protocol = "http"
    path     = "/"
  }

  droplet_tag = digitalocean_tag.terraform.name
}