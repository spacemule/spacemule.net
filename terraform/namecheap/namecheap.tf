resource "namecheap_domain_records" "zahava" {
  domain = "zahava-is.cool"
  mode = "OVERWRITE"
  email_type = "NONE"

  record {
    hostname = "*"
    type = "A"
    address = var.main_vps_ip
  }

  record {
    hostname = "@"
    type = "A"
    address = var.main_vps_ip
  }

  record {
    hostname = "www"
    type = "CNAME"
    address = "zahava-is.cool"
  }

}

resource "namecheap_domain_records" "spacemule" {
  domain = "spacemule.net"
  mode = "MERGE"
  email_type = "MX"

  record {
    hostname = "*"
    type = "A"
    address = var.main_vps_ip
  }

  record {
    hostname = "@"
    type = "A"
    address = var.main_vps_ip
  }

  record {
    hostname = "autoconfig"
    type = "CNAME"
    address = "mailbox.org"
  }

  record {
    hostname = "www"
    type = "CNAME"
    address = "spacemule.net"
  }

  record {
    hostname = "@"
    type = "TXT"
    address = "v=spf1 mx:mailbox.org ~all"
  }

  record {
    hostname = "@"
    type = "TXT"
    address = "google-site-verification=87AdDG2-KETGsqTSCe-bM7mk2Mi9OTDCNj_ZOcVB4PE"
  }

  record {
    hostname = "_dmarc"
    type = "TXT"
    address = "v=DMARC1; p=quarantine; sp=reject; rua=mailto:postmaster@spacemule.net; ruf=mailto:admin@spacemule.net"
  }

  record {
    hostname = "7b9e5ac5f0e32772aca9d97443446501f4e94387"
    type = "TXT"
    address = "d7bd3eca4f8f012e7c1346dac296379146f0b6ba"
  }

  record {
    hostname = "mbo0001._domainkey"
    type = "TXT"
    address = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2K4PavXoNY8eGK2u61 LIQlOHS8f5sWsCK5b+HMOfo0M+aNHwfqlVdzi/IwmYnuDKuXYuCllrgnxZ4fG4yV aux58v9grVsFHdzdjPlAQfp5rkiETYpCMZwgsmdseJ4CoZaosPHLjPumFE/Ua2WA QQljnunsM9TONM9L6KxrO9t5IISD1XtJb0bq1lVI/e72k3mnPd/q77qzhTDmwN4T SNJZN8sxzUJx9HNSMRRoEIHSDLTIJUK+Up8IeCx0B7CiOzG5w/cHyZ3AM5V8lkqB aTDK46AwTkTVGJf59QxUZArG3FEH5vy9HzDmy0tGG+053/x4RqkhqMg5/ClDm+lp ZqWwIDAQAB"
  }

  record {
    hostname = "mbo0002._domainkey"
    type = "TXT"
    address = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqxEKIg2c48ecfmy/+r j35sBOhdfIYGNDCMeHy0b36DX6MNtS7zA/VDR2q5ubtHzraL5uUGas8kb/33wtrW FYxierLRXy12qj8ItdYCRugu9tXTByEED05WdBtRzJmrb8YBMfeK0E0K3wwoWfhI k/wzKbjMkbqYBOTYLlIcVGQWzOfN7/n3n+VChfu6sGFK3k2qrJNnw22iFy4C8Ks7 j77+tCpm0PoUwA2hOdLrRw3ldx2E9PH0GVwIMJRgekY6cS7DrbHrj/AeGlwfwwCS i9T23mYvc79nVrh2+82ZqmkpZSTD2qq+ukOkyjdRuUPck6e2b+x141Nzd81dIZVf OEiwIDAQAB"
  }

  record {
    hostname = "@"
    type = "MX"
    address = "mxext1.mailbox.org"
    mx_pref = 10
  }

  record {
    hostname = "@"
    type = "MX"
    address = "mxext2.mailbox.org"
    mx_pref = 10
  }

  record {
    hostname = "@"
    type = "MX"
    address = "mxext3.mailbox.org"
    mx_pref =20
  }

}