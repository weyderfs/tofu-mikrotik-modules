output "vlan_interface" {
  description = "VLAN interface name on the router"
  value       = routeros_interface_vlan.this.name
}

output "vlan_id" {
  description = "VLAN ID"
  value       = routeros_interface_vlan.this.vlan_id
}
