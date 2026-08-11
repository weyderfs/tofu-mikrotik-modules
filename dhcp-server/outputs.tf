output "server_name" {
  description = "Nome do servidor DHCP"
  value       = var.server_name
}

output "id" {
  description = "ID do recurso do servidor DHCP"
  value       = routeros_ip_dhcp_server.this.id
}

output "interface" {
  description = "Interface VLAN associada"
  value       = var.interface
}