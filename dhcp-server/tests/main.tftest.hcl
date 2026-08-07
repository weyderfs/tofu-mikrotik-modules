run "validate_plan" {
  command = "plan"

  variables = {
    vlan_name      = "iot"
    vlan_interface = "bridge-home-vlan10"
    vlan_subnet    = "[IP_ADDRESS]/25"
    dhcp_range     = "[IP_ADDRESS]-[IP_ADDRESS]"
    gateway        = "[IP_ADDRESS]"
    dns_servers    = ["[IP_ADDRESS]"]
  }

  assert {
    function = "plan_output"
    expressions = {
      planned_values = jsonencode({
        root_module = {
          resources = [
            {
              address = "routeros_ip_pool.this"
              values = {
                name = "pool-iot"
              }
            },
            {
              address = "routeros_ip_dhcp_server.this"
              values = {
                name      = "dhcp-iot"
                interface = "bridge-home-vlan10"
              }
            },
            {
              address = "routeros_ip_dhcp_server_network.this"
              values = {
                address = "[IP_ADDRESS]/25"
                gateway = "[IP_ADDRESS]"
              }
            }
          ]
        }
      })
    }
  }
}