resource "routeros_ip_pool" "this" {
  name      = var.pool_name
  ranges    = [var.ranges]
  comment   = var.comment
  next_pool = var.next_pool
}