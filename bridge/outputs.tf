output "bridge_name" {
  description = "Name of the created bridge"
  value       = routeros_interface_bridge.home.name
}