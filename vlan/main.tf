terraform {
  required_providers {
    routeros = {
      source  = "terraform-routeros/routeros"
      version = ">= 1.99.1"
    }
  }
}

locals {
  default_comment = format("VLAN %d - %s", var.vlan_id, var.vlan_name)
  vlan_comment    = coalesce(var.comment, local.default_comment)
}

resource "routeros_interface_vlan" "this" {
  name      = format("%s-vlan%d", var.bridge_name, var.vlan_id)
  vlan_id   = var.vlan_id
  interface = var.bridge_name
  comment   = local.vlan_comment
  disabled  = var.disabled
  arp       = var.arp
  arp_timeout = var.arp_timeout
  mtu       = var.mtu
  hw_offloaded = var.hw_offloaded
  mvrp      = var.mvrp
  use_service_tag = var.use_service_tag
}

output "vlan_interface" {
  description = "VLAN interface name on the router"
  value       = routeros_interface_vlan.this.name
}

output "vlan_id" {
  description = "VLAN ID"
  value       = var.vlan_id
}