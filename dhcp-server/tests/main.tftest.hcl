mock_provider "routeros" {
  alias = "mock"
}

run "validate_plan" {
  command = plan

  providers = {
    routeros = routeros.mock
  }

  variables {
    vlan_name      = "iot"
    vlan_interface = "bridge-home-vlan10"
    vlan_subnet    = "192.168.10.0/25"
    dhcp_range     = "192.168.10.100-192.168.10.200"
    gateway        = "192.168.10.1"
    dns_servers    = ["192.168.1.1"]
  }

  assert {
    condition     = routeros_ip_pool.this.name == "pool-iot"
    error_message = "ip pool name should be 'pool-iot'"
  }

  assert {
    condition     = routeros_ip_dhcp_server.this.name == "dhcp-iot"
    error_message = "dhcp server name should be 'dhcp-iot'"
  }

  assert {
    condition     = routeros_ip_dhcp_server.this.interface == "bridge-home-vlan10"
    error_message = "dhcp server interface should be 'bridge-home-vlan10'"
  }

  assert {
    condition     = routeros_ip_dhcp_server_network.this.address == "192.168.10.0/25"
    error_message = "dhcp network address should be '192.168.10.0/25'"
  }

  assert {
    condition     = routeros_ip_dhcp_server_network.this.gateway == "192.168.10.1"
    error_message = "dhcp network gateway should be '192.168.10.1'"
  }
}
