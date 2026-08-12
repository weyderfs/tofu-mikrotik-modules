output "port_name" {
  description = "Nome da porta do switch"
  value       = routeros_interface_ethernet_switch_port.this.name
}

output "id" {
  description = "ID do recurso da porta do switch"
  value       = routeros_interface_ethernet_switch_port.this.id
}

output "vlan_mode" {
  description = "Modo de consulta a tabela VLAN"
  value       = routeros_interface_ethernet_switch_port.this.vlan_mode
}