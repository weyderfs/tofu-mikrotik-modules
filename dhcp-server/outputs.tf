output "dhcp_server_name" {
  description = "Name of the DHCP server instance"
  value       = routeros_ip_dhcp_server.this.name
}

output "ip_pool_name" {
  description = "Name of the IP pool"
  value       = routeros_ip_pool.this.name
}