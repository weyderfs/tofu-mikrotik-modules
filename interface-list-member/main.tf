resource "routeros_interface_list_member" "this" {
  interface = var.interface
  list      = var.list
  comment   = var.comment
  disabled  = var.disabled
}