output "bridge_port_id" {
  description = "Resource ID of the bridge port configuration"
  value       = routeros_interface_bridge_port.this.id
}
