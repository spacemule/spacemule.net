terraform {
  required_providers {
    namecheap = {
      source = "namecheap/namecheap"
      version = "~> 2.1.0"
    }
  }
}

# Namecheap API credentials
provider "namecheap" {
  user_name = var.namecheap_user
  api_user = var.namecheap_user
  api_key = var.namecheap_key
  client_ip = var.namecheap_ip
  use_sandbox = false
}