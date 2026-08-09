run "validate_plan" {
  command = plan

  variables = {
    doh_upstream_url       = "https://dns.quad9.net/dns-query"
    doh_upstream_addresses = ["[IP_ADDRESS]", "[IP_ADDRESS]"]
  }

  assert {
    function = "planned_values"
    expression = {
      "routeros_ip_dns.doh" = {
        allow_remote_requests = true
        use_doh_server        = "https://dns.quad9.net/dns-query"
      }
    }
  }
}