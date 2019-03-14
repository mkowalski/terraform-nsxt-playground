resource "nsxt_logical_switch" "switch1" {
    admin_state = "UP"
    description = "LS created by Terraform"
    display_name = "mkowalski-terraform-playground-switch1"
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
