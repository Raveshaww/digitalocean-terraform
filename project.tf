resource "digitalocean_project" "terraform-project" {
  name        = "terraform-project"
  description = "A project to mess around with Terraform and other subjects in."
  purpose     = "Studying"
  environment = "Development"

}

# Because I really don't want to hardcode each individual droplet when the amount could change
# and the best way I could find to do this easily was this
resource "digitalocean_project_resources" "terraform-project-resources" {
  project = digitalocean_project.terraform-project.id
  resources = [
    for droplet in digitalocean_droplet.terraform-droplets : droplet.urn
  ]
}

resource "digitalocean_project_resources" "terraform-project-resources-lb" {
  project = digitalocean_project.terraform-project.id
  resources = [digitalocean_loadbalancer.tf-lb-1.urn]
}