output "filter_rules_applied" {
  description = "Number of filter rules provisioned"
  value = (
    4   # input chain
    + 12  # forward chain
  )
}

output "nat_rules_applied" {
  description = "Number of NAT masquerade rules provisioned"
  value       = 3
}
