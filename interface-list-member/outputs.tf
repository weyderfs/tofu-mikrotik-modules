output "id" {
  description = "ID do recurso do membro da lista de interfaces"
  value       = routeros_interface_list_member.this.id
}

output "interface" {
  description = "Interface membro da lista"
  value       = routeros_interface_list_member.this.interface
}

output "list" {
  description = "Lista de interfaces"
  value       = routeros_interface_list_member.this.list
}

output "comment" {
  description = "Comentário do membro"
  value       = routeros_interface_list_member.this.comment
}

output "disabled" {
  description = "Estado do membro (desabilitado ou não)"
  value       = routeros_interface_list_member.this.disabled
}

output "dynamic" {
  description = "Indica se o membro é dinâmico (gerenciado pelo RouterOS)"
  value       = routeros_interface_list_member.this.dynamic
}