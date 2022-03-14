resource "hcloud_server" "spacemule-net" {
  backups            = false
  datacenter         = "hel1-dc2"
  image              = "ubuntu-20.04"
  location           = "hel1"
  name               = "spacemule-net"
  server_type        = "cpx21"
  delete_protection = true
  rebuild_protection = true
}
