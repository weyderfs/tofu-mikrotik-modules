run "validate_plan" {
  command = plan

  variables = {
    vlan_interface = "bridge-home-vlan10"
    address        = "[IP_ADDRESS]/25"
    network        = "[IP_ADDRESS]"
  }

  assert {
    function = "planned_values"
    expression = {
      "routeros_ip_address.this" = {
        address   = "[IP_ADDRESS]/25"
        interface = "bridge-home-vlan10"
      }
    }
  }
}