resource "cloudflare_record" "monitoring" {
  zone_id = var.cloudflare_zone_id
  name    = "monitoring"
  value   = "167.172.103.241"
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "uptime" {
  zone_id = var.cloudflare_zone_id
  name    = "uptime"
  value = "monitoring.enlabs.cz"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "grafana" {
  zone_id = var.cloudflare_zone_id
  name    = "grafana"
  value = "monitoring.enlabs.cz"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "status" {
  zone_id = var.cloudflare_zone_id
  name    = "status"
  value = "monitoring.enlabs.cz"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "ecomail-cname" {
  zone_id = var.cloudflare_zone_id
  name    = "ecomail"
  value = "sparkpostmail.com"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "ecomail-dmarc" {
  zone_id = var.cloudflare_zone_id
  name    = "_dmarc.ecomail"
  value = "v=DMARC1; p=none; rua=mailto:3hhic639ev@dmarc-reports.ecomailapp.com; fo=1; ri=86400;"
  type    = "TXT"
  proxied = false
}

resource "cloudflare_record" "ecomail-dkim" {
  zone_id = var.cloudflare_zone_id
  name    = "ecomail._domainkey.ecomail"
  value = "v=DKIM1; k=rsa; h=sha256; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC0diuxLOeJJuRRu6v4Xnau70JIEEFGnkiiu6PK3i+1pGKyoLOyJFzk+Ah8zRoujJSzv95nxtDYERVpGxfgu+JXkV3ZDJucMkd/SxKIQ8pJ0Uk1MKKkUFnYgvOxW5Umq8VNpstZZfjhCRcYgb1Iw+oFabBbfShIM98yuaN7Q7KKcQIDAQAB"
  type    = "TXT"
  proxied = false
}
