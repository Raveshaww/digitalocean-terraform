resource "digitalocean_vpc" "terraform-vpc" {
  name     = "terraform-vpc"
  region   = "sfo3"
  ip_range = "10.200.0.0/16"
}
