run "validate_plan" {
  command = plan

  variables = {
    vlan_id     = 10
    vlan_name   = "iot"
    bridge_name = "bridge-home"
  }

  assert {
    function = "planned_values"
    expression = {
      "routeros_interface_vlan.this" = {
        vlan_id   = 10
        name      = "bridge-home-vlan10"
      }
    }
  }
}