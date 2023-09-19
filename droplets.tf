resource "digitalocean_droplet" "terraform-droplets" {
  count     = 2
  image     = var.droplet_image
  name      = "terraform-droplet-${count.index}"
  region    = var.do_region
  size      = var.do_droplet_size
  ssh_keys  = [var.ssh_key_id]
  vpc_uuid  = digitalocean_vpc.terraform-vpc.id
  tags      = [digitalocean_tag.terraform.id]
  user_data = data.cloudinit_config.cloud-init.rendered
}