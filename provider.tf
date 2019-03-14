provider "nsxt" {
    host = "${var.nsx_ip}"
    username = "admin"
    password = "${var.nsx_password}"
    allow_unverified_ssl = true
}
