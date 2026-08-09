terraform {
  required_providers {
    routeros = {
      source  = "terraform-routeros/routeros"
      version = ">= 1.99.1"
    }
  }
}

locals {
  default_comment = format("IP address for %s", var.vlan_interface)
  comment         = coalesce(var.comment, local.default_comment)
}

resource "routeros_ip_address" "this" {
  address     = var.address
  interface   = var.vlan_interface
  comment     = local.comment
  disabled    = var.disabled
  network     = var.network
  vrf         = var.vrf
}

output "ip_address_id" {
  description = "Resource ID of the assigned IP address"
  value       = routeros_ip_address.this.id
}