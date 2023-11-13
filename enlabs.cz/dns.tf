resource "cloudflare_record" "monitoring" {
  zone_id = var.cloudflare_zone_id
  name    = "monitoring"
  value   = "167.172.103.241"
  type    = "A"
  proxied = true
}
