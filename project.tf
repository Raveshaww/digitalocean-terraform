resource "digitalocean_project" "terraform-project" {
  name        = "terraform-project"
  description = "A project to mess around with Terraform and other subjects in."
  purpose     = "Studying"
  environment = "Development"
  resources   = [digitalocean_droplet.terraform-droplet-1.urn, digitalocean_droplet.terraform-droplet-2.urn]
}
