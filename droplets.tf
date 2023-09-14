resource "digitalocean_droplet" "terraform-droplet-1" {
  image     = var.droplet_image
  name      = "terraform-droplet-1"
  region    = digitalocean_vpc.terraform-vpc.region
  size      = "s-1vcpu-512mb-10gb"
  ssh_keys  = [var.ssh_key_id]
  vpc_uuid  = digitalocean_vpc.terraform-vpc.id
  tags      = [digitalocean_tag.terraform.id]
  user_data = data.cloudinit_config.cloud-init.rendered
}