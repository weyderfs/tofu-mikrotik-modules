resource "routeros_ip_dhcp_server" "this" {
  name                      = var.server_name
  interface                 = var.interface
  address_pool              = var.address_pool
  lease_time                = var.lease_time
  disabled                  = var.disabled
  comment                   = var.comment
  add_arp                   = var.add_arp
  address_lists             = var.address_lists
  allow_dual_stack_queue    = var.allow_dual_stack_queue
  always_broadcast          = var.always_broadcast
  authoritative             = var.authoritative
  bootp_lease_time          = var.bootp_lease_time
  bootp_support             = var.bootp_support
  client_mac_limit          = var.client_mac_limit
  conflict_detection        = var.conflict_detection
  delay_threshold           = var.delay_threshold
  dhcp_option_set           = var.dhcp_option_set
  dynamic_lease_identifiers = var.dynamic_lease_identifiers
  insert_queue_before       = var.insert_queue_before
  lease_script              = var.lease_script
  parent_queue              = var.parent_queue
  relay                     = var.relay
  src_address               = var.src_address
  support_broadband_tr101   = var.support_broadband_tr101
  use_framed_as_classless   = var.use_framed_as_classless
  use_radius                = var.use_radius
  use_reconfigure           = var.use_reconfigure

  depends_on = [routeros_ip_pool.this]
}

output "server_name" {
  description = "Nome do servidor DHCP"
  value       = var.server_name
}

output "id" {
  description = "ID do recurso do servidor DHCP"
  value       = routeros_ip_dhcp_server.this.id
}