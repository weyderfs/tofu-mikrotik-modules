run "validate_plan" {
  command = "plan"

  variables = {
    vlan_interface = "bridge-home-vlan10"
    address        = "[IP_ADDRESS]/25"
    network        = "[IP_ADDRESS]"
  }

  assert {
    function = "plan_output"
    expressions = {
      planned_values = jsonencode({
        root_module = {
          resources = [
            {
              address = "routeros_ip_address.this"
              values = {
                address   = "[IP_ADDRESS]/25"
                interface = "bridge-home-vlan10"
              }
            }
          ]
        }
      })
    }
  }
}