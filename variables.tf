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