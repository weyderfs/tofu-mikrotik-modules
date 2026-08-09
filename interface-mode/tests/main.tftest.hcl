mock_provider "routeros" {
  alias = "mock"
}

run "validate_plan" {
  command = plan

  providers = {
    routeros = routeros.mock
  }

  variables {
    port_name    = "ether5"
    bridge_name  = "bridge-home"
    pvid         = 20
    tagged_vlans = []
  }

  assert {
    condition     = routeros_interface_bridge_port.this.interface == "ether5"
    error_message = "bridge port interface should be 'ether5'"
  }

  assert {
    condition     = routeros_interface_bridge_port.this.bridge == "bridge-home"
    error_message = "bridge port bridge should be 'bridge-home'"
  }

  assert {
    condition     = routeros_interface_bridge_port.this.pvid == 20
    error_message = "bridge port pvid should be 20"
  }
}
