output "name" {
  description = "Nome da interface PPPoE"
  value       = routeros_interface_pppoe_client.this.name
}

output "id" {
  description = "ID do recurso da interface PPPoE"
  value       = routeros_interface_pppoe_client.this.id
}

output "interface" {
  description = "Interface física de uplink associada"
  value       = routeros_interface_pppoe_client.this.interface
}