resource "digitalocean_vpc" "terraform-vpc" {
  name     = "terraform-vpc"
  region   = var.do_region
  ip_range = "10.200.0.0/16"
}
