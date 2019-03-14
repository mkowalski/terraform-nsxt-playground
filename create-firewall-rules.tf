resource "nsxt_firewall_section" "firewall_sect" {
  description  = "FS provisioned by Terraform"
  display_name = "mkowalski-terraform-playground-firewall1"

  tag {
    scope = "color"
    tag   = "blue"
  }

  applied_to {
    target_type = "NSGroup"
    target_id   = "bd364021-3024-4631-be6e-1ba0e8da5852" # mkowalski-playground-nsgroup
  }

  section_type = "LAYER3"
  stateful     = true

  rule {
    display_name          = "out_rule"
    description           = "Out going rule"
    action                = "ALLOW"
    logged                = true
    ip_protocol           = "IPV4"
    direction             = "OUT"
    destinations_excluded = "false"
    sources_excluded      = "true"

    source {
      target_type = "NSGroup"
      target_id   = "bd364021-3024-4631-be6e-1ba0e8da5852"
    }

    destination {
      target_type = "NSGroup"
      target_id   = "bd364021-3024-4631-be6e-1ba0e8da5852"
    }
  }
}
