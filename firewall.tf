resource "digitalocean_firewall" "terraform-firewall" {
  name = "terraform-firewall"

  droplet_ids = [digitalocean_droplet.terraform-droplet-1.id, digitalocean_droplet.terraform-droplet-2.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = [var.home_ip]
  }

  outbound_rule {
    protocol = "icmp"
  }
}