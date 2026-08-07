run "validate_plan" {
  command = "plan"

  variables = {
    bridge_name = "bridge-home"
  }

  assert {
    function = "plan_output"
    expressions = {
      planned_values = jsonencode({
        root_module = {
          resources = [
            {
              address = "routeros_interface_bridge.home"
              values = {
                name = "bridge-home"
                vlan_filtering = true
              }
            }
          ]
        }
      })
    }
  }
}