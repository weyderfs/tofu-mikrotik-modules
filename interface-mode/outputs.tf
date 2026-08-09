output "bridge_port_id" {
  description = "Resource ID of the bridge port configuration"
  value       = routeros_interface_bridge_port.this.id
}

output "ethernet_id" {
  description = "Resource ID of the ethernet interface configuration"
  value       = routeros_interface_ethernet.ethernet.id
}

output "ethernet_name" {
  description = "Name of the ethernet interface"
  value       = routeros_interface_ethernet.ethernet.name
}
