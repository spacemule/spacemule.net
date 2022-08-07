locals {
  local_machine = "10.0.1.1"
  main_vps = "65.108.91.184"
  dns_records = {
   "dns.spacemule.net"   = local.local_machine
   "dns2.spacemule.net" = local.local_machine
   "backup.spacemule.net" = local.local_machine
   "docs.spacemule.net" = local.local_machine
   "jelly.spacemule.net" = local.local_machine
   "spacemule.net" = local.main_vps
   "sync.spacemule.net" = local.local_machine
   "transmission.spacemule.net" = local.local_machine
   "vpn.spacemule.net" = "10.42.0.1"
   "zahava-is-cool.com" = local.main_vps
  }
}
resource "pihole_dns_record" "record" {
  for_each = local.dns_records
  domain = each.key
  ip     = each.value
}

