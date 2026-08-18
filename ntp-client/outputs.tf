output "id" {
  description = "ID do recurso do cliente NTP"
  value       = routeros_system_ntp_client.this.id
}

output "enabled" {
  description = "Estado do cliente NTP"
  value       = routeros_system_ntp_client.this.enabled
}

output "mode" {
  description = "Modo de operação do cliente NTP"
  value       = routeros_system_ntp_client.this.mode
}

output "servers" {
  description = "Lista de servidores NTP configurados"
  value       = routeros_system_ntp_client.this.servers
}

output "status" {
  description = "Status do cliente NTP (synchronized, waiting, stopped)"
  value       = routeros_system_ntp_client.this.status
}

output "synced_server" {
  description = "IP do servidor NTP atualmente sincronizado"
  value       = routeros_system_ntp_client.this.synced_server
}

output "synced_stratum" {
  description = "Stratum do servidor NTP sincronizado"
  value       = routeros_system_ntp_client.this.synced_stratum
}