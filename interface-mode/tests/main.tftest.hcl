run "validate_plan" {
  command = "plan"

  variables = {
    port_name    = "ether5"
    bridge_name  = "bridge-home"
    pvid         = 20
    tagged_vlans = []
  }

  assert {
    function = "plan_output"
    expressions = {
      planned_values = jsonencode({
        root_module = {
          resources = [
            {
              address = "routeros_interface_bridge_port.this"
              values = {
                port_name    = "ether5"
                bridge_name  = "bridge-home"
                pvid         = 20
              }
            }
          ]
        }
      })
    }
  }
}