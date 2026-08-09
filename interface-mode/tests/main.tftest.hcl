run "validate_plan" {
  command = plan

  variables = {
    port_name    = "ether5"
    bridge_name  = "bridge-home"
    pvid         = 20
    tagged_vlans = []
  }

  assert {
    function = "planned_values"
    expression = {
      "routeros_interface_bridge_port.this" = {
        port_name   = "ether5"
        bridge_name = "bridge-home"
        pvid        = 20
      }
    }
  }
}