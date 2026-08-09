run "validate_plan" {
  command = plan

  variables {
    bridge_name = "bridge-home"
  }

  assert {
    condition     = routeros_interface_bridge.home.name == "bridge-home"
    error_message = "bridge name should be 'bridge-home'"
  }

  assert {
    condition     = routeros_interface_bridge.home.vlan_filtering == true
    error_message = "vlan_filtering should be true"
  }
}
