run "validate_plan" {
  command = "plan"

  variables = {
    doh_upstream_url       = "https://dns.quad9.net/dns-query"
    doh_upstream_addresses = ["[IP_ADDRESS]", "[IP_ADDRESS]"]
  }

  assert {
    function = "plan_output"
    expressions = {
      planned_values = jsonencode({
        root_module = {
          resources = [
            {
              address = "routeros_ip_dns.doh"
              values = {
                allow_remote_requests = true
                use_doh_server        = "https://dns.quad9.net/dns-query"
              }
            }
          ]
        }
      })
    }
  }
}