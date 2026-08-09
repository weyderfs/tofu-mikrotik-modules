run "validate_plan" {
  command = plan

  variables = {
    bridge_name   = "bridge-home"
  }

  assert {
    function = "planned_values"
    expression = {
      "routeros_interface_bridge.home" = {
        name = "bridge-home"
        vlan_filtering = true
      }
    }
  }
}