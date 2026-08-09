mock_provider "routeros" {
  alias = "mock"
}

run "validate_plan" {
  command = plan

  providers = {
    routeros = routeros.mock
  }

  variables {
    wan_interface = "ether1"
    bridge_name   = "bridge-home"
    iot_subnet    = "10.0.10.0/24"
    lan_subnet    = "10.0.20.0/28"
    guest_subnet  = "10.0.30.0/27"
    server_ip     = "10.0.20.10"
    server_ports  = { ha = "8123", dns = "53" }
    dns_ports     = { udp = "53", tcp = "53" }
  }

  assert {
    condition     = routeros_ip_firewall_filter.input_drop_wan.chain == "input"
    error_message = "input_drop_wan chain should be 'input'"
  }

  assert {
    condition     = routeros_ip_firewall_filter.input_drop_wan.action == "drop"
    error_message = "input_drop_wan action should be 'drop'"
  }

  assert {
    condition     = routeros_ip_firewall_filter.input_drop_wan.in_interface == "ether1"
    error_message = "input_drop_wan in_interface should be 'ether1'"
  }

  assert {
    condition     = routeros_ip_firewall_nat.masquerade_lan.chain == "srcnat"
    error_message = "masquerade_lan chain should be 'srcnat'"
  }

  assert {
    condition     = routeros_ip_firewall_nat.masquerade_lan.action == "masquerade"
    error_message = "masquerade_lan action should be 'masquerade'"
  }

  assert {
    condition     = routeros_ip_firewall_nat.masquerade_lan.src_address == "10.0.20.0/28"
    error_message = "masquerade_lan src_address should be '10.0.20.0/28'"
  }

  assert {
    condition     = routeros_ip_firewall_nat.masquerade_lan.out_interface == "ether1"
    error_message = "masquerade_lan out_interface should be 'ether1'"
  }
}
