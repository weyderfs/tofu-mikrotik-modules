run "validate_plan" {
  command = plan

  variables = {
    vlan_name      = "iot"
    vlan_interface = "bridge-home-vlan10"
    vlan_subnet    = "192.168.10.0/25"
    dhcp_range     = "192.168.10.100-192.168.10.200"
    gateway        = "192.168.10.1"
    dns_servers    = ["192.168.1.1"]
  }

  assert {
    function = "planned_values"
    expression = {
      "routeros_ip_pool.this" = {
        name = "pool-iot"
      }
      "routeros_ip_dhcp_server.this" = {
        name       = "dhcp-iot"
        interface  = "bridge-home-vlan10"
      }
      "routeros_ip_dhcp_server_network.this" = {
        address   = "192.168.10.0/25"
        gateway   = "192.168.10.1"
      }
    }
  }
}