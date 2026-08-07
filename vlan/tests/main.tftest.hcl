run "validate_plan" {
  command = "plan"

  variables = {
    vlan_id     = 10
    vlan_name   = "iot"
    bridge_name = "bridge-home"
  }

  assert {
    function = "plan_output"
    expressions = {
      planned_values = jsonencode({
        root_module = {
          resources = [
            {
              address = "routeros_interface_vlan.this"
              values = {
                vlan_id = 10
                name    = "bridge-home-vlan10"
              }
            }
          ]
        }
      })
    }
  }
}