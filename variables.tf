variable "do_token" {
  type        = string
  description = "Your DigitalOcean API token."
}

variable "home_ip" {
  type        = string
  description = "The public IPv4 address of where you would like to ssh into the Droplets from."
}

variable "ssh_key_id" {
  type        = string
  description = "This is the DigitalOcean ID for the ssh key you would like to use."
}

variable "droplet_image" {
  type        = string
  description = "The image you would like to use in your Droplets"
  default     = "ubuntu-22-04-x64"
}

variable "do_region" {
  type        = string
  description = "The region you would like your resources to be in"
  default     = "sfo3"
}

variable "do_droplet_size" {
  type        = string
  description = "The size you would like your droplets to be"
  default     = "s-1vcpu-512mb-10gb"
}