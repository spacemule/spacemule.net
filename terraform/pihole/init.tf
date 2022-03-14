terraform {
  required_providers {
    pihole = {
      source = "ryanwholey/pihole"
      version =  "~> 0.0.11"
    }
  }
}

provider "pihole" {
  url = "https://dns.spacemule.net"
  api_token = var.pihole_key
}

provider "pihole" {
  alias = "vps"
  url = "https://dns2.spacemule.net"
  api_token = var.pihole2_key
}