output "id" {
  description = "Resource ID of the bridge VLAN entry"
  value       = routeros_interface_bridge_vlan.this.id
}

output "bridge_name" {
  description = "Bridge name"
  value       = routeros_interface_bridge_vlan.this.bridge
}

output "vlan_ids" {
  description = "VLAN IDs in this entry"
  value       = routeros_interface_bridge_vlan.this.vlan_ids
}

output "tagged" {
  description = "Tagged member interfaces"
  value       = routeros_interface_bridge_vlan.this.tagged
}

output "untagged" {
  description = "Untagged member interfaces"
  value       = routeros_interface_bridge_vlan.this.untagged
}
