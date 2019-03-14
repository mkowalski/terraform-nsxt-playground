provider "nsxt" {
    host = "${var.nsx_ip}"
    username = "admin"
    password = "${var.nsx_password}"
    allow_unverified_ssl = true
}

resource "nsxt_logical_switch" "switch1" {
    admin_state = "UP"
    description = "LS created by Terraform"
    display_name = "mkowalski_terraform_switch1"
    transport_zone_id = "${var.overlay_transport_zone}"
    replication_mode = "MTEP"
    tag {
	scope = "project"
	tag = "terraform-demo"
    }
    tag {
	scope = "tenant"
	tag = "terraform-demo-tenant"
    }
}
