output "droplet_ip_address" {
  value      = digitalocean_droplet.bot.ipv4_address
  sensitive = true
}