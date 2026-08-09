mock_provider "routeros" {
  alias = "mock"
}

run "validate_plan" {
  command = plan

  providers = {
    routeros = routeros.mock
  }

  variables {
    vlan_id     = 10
    vlan_name   = "iot"
    bridge_name = "bridge-home"
  }

  assert {
    condition     = routeros_interface_vlan.this.vlan_id == 10
    error_message = "vlan_id should be 10"
  }

  assert {
    condition     = routeros_interface_vlan.this.name == "bridge-home-vlan10"
    error_message = "vlan name should be 'bridge-home-vlan10'"
  }
}
