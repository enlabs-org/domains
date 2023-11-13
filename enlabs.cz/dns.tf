resource "cloudflare_record" "monitoring" {
  zone_id = var.cloudflare_zone_id
  name    = "monitoring"
  value   = "167.172.103.241"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "uptime" {
  zone_id = var.cloudflare_zone_id
  name    = "uptime"
  value = "monitoring.enlabs.cz"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "grafana" {
  zone_id = var.cloudflare_zone_id
  name    = "grafana"
  value = "monitoring.enlabs.cz"
  type    = "CNAME"
  proxied = true
}
