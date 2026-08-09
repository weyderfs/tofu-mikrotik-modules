mock_provider "routeros" {
  alias = "mock"
}

run "validate_plan" {
  command = plan

  providers = {
    routeros = routeros.mock
  }

  variables {
    doh_upstream_url       = "https://dns.quad9.net/dns-query"
    doh_upstream_addresses = ["9.9.9.9", "1.1.1.1"]
  }

  assert {
    condition     = routeros_ip_dns.doh.allow_remote_requests == true
    error_message = "allow_remote_requests should be true"
  }

  assert {
    condition     = routeros_ip_dns.doh.use_doh_server == "https://dns.quad9.net/dns-query"
    error_message = "use_doh_server should match the upstream URL"
  }
}
