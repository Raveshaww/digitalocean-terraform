data "cloudinit_config" "cloud-init" {
  gzip          = false
  base64_encode = false

  part {
    filename     = "userdata/cloud-init.yaml"
    content_type = "text/cloud-config"

    content = file("${path.module}/userdata/cloud-init.yaml")
  }
}