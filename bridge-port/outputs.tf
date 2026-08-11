output "port_name" {
  description = "Nome da porta na ponte"
  value       = routeros_interface_bridge_port.this.interface
}

output "bridge" {
  description = "Nome da ponte"
  value       = routeros_interface_bridge_port.this.bridge
}

output "id" {
  description = "ID do recurso da porta da ponte"
  value       = routeros_interface_bridge_port.this.id
}