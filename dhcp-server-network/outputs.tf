output "address" {
  description = "Endereço da rede DHCP"
  value       = routeros_ip_dhcp_server_network.this.address
}

output "id" {
  description = "ID do recurso da rede DHCP"
  value       = routeros_ip_dhcp_server_network.this.id
}