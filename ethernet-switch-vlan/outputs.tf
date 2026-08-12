output "id" {
  description = "ID da entrada da tabela VLAN do switch"
  value       = routeros_interface_ethernet_switch_vlan.this.id
}

output "vlan_id" {
  description = "ID da VLAN"
  value       = routeros_interface_ethernet_switch_vlan.this.vlan_id
}

output "switch" {
  description = "Nome do switch chip"
  value       = routeros_interface_ethernet_switch_vlan.this.switch
}

output "ports" {
  description = "Portas membro para a VLAN"
  value       = routeros_interface_ethernet_switch_vlan.this.ports
}