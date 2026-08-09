run "validate_plan" {
  command = plan

  variables = {
    wan_interface     = "ether1"
    bridge_name       = "bridge-home"
    iot_subnet        = "10.0.10.0/24"
    lan_subnet        = "10.0.20.0/28"
    guest_subnet      = "10.0.30.0/27"
    server_ip         = "10.0.20.10"
    server_ports      = { ha = "8123", dns = "53" }
    dns_ports         = ["53"]
  }

  assert {
    function = "planned_values"
    expression = {
      "routeros_ip_firewall_filter.input_drop_wan" = {
        chain    = "input"
        action   = "drop"
        in_interface = "ether1"
      }
      "routeros_ip_firewall_nat.masquerade_lan" = {
        chain         = "srcnat"
        action        = "masquerade"
        src_address   = "10.0.20.0/28"
        out_interface = "ether1"
      }
    }
  }
}