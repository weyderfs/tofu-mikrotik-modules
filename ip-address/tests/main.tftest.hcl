mock_provider "routeros" {
  alias = "mock"
}

run "validate_plan" {
  command = plan

  providers = {
    routeros = routeros.mock
  }

  variables {
    vlan_interface = "bridge-home-vlan10"
    address        = "192.168.10.2/25"
    network        = "192.168.10.0"
  }

  assert {
    condition     = routeros_ip_address.this.address == "192.168.10.2/25"
    error_message = "ip address should be '192.168.10.2/25'"
  }

  assert {
    condition     = routeros_ip_address.this.interface == "bridge-home-vlan10"
    error_message = "ip address interface should be 'bridge-home-vlan10'"
  }
}
