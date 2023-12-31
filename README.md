[![lint](https://github.com/Raveshaww/digitalocean-terraform/actions/workflows/lint.yml/badge.svg)](https://github.com/Raveshaww/digitalocean-terraform/actions/workflows/lint.yml)
# DigitalOcean Terraform Example
A short example of using Terraform with DigitalOcean.
# Features
- This will create the following:
    - Several Droplets (DigitalOcean's term for a virtual machine) configured by a basic cloud-init script
        - This script will create a single user intended to be used with Ansible
    - A VPC
    - A project
    - A load balancer that is associated with the Droplets
    - A tag, instantly associated with the Droplets
    - A firewall with basic rules to allow inbound SSH originating from a specified IP, as well as outbound traffic to allow packages to be updated via APT
# Setup and Usage
1. [Install Terraform](https://developer.hashicorp.com/terraform/downloads?ajs_aid=2255c4dc-e3ee-45a0-ad0f-7275b943cdae&product_intent=terraform)
2. Clone this repository
    - `git@github.com:Raveshaww/digitalocean-terraform.git`
3. Change into the repo directory with `cd digitalocean-terraform`
4. Run `cp userdata/copy-cloud-init.yaml userdata/cloud-init.yaml`
5. Provide the `userdata/cloud-init.yaml` file with the SSH key you would like to use.
6. Run `cp copy-terraform.vars terraform.tfvars`
7. Provide the `terraform.tfvars` with the relevant information
    - Additional details about the requested information can be found in `variables.tf`
8. Run with `terraform plan` and `terraform apply`
# General Notes
- Want to visualize things with a nice graph? Try using [Rover](https://github.com/im2nguyen/rover) to make a pretty graph.
- I'm a fan of using Ansible to manage your infrastructure what it's deployed. This is why the cloud-init script really only sets up a user for use with Ansible and not much else.