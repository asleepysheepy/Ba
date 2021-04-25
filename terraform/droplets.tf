data "digitalocean_ssh_key" "lexi" {
  name = "lexi"
}

resource "digitalocean_droplet" "bot" {
  image  = "debian-10-x64"
  name   = "bot"
  region = "tor1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    data.digitalocean_ssh_key.lexi.id
  ]
}