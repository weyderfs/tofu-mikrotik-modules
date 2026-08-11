# doh

Configures DNS settings on MikroTik including DNS-over-HTTPS and standard DNS servers. Exposes all `routeros_ip_dns` attributes.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_dns.doh | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| doh_upstream_url | DoH upstream URL (e.g., https://dns.quad9.net/dns-query) | `string` | n/a | yes |
| doh_upstream_addresses | List of upstream DNS server IPs for fallback | `list(string)` | n/a | yes |
| address_list_extra_time | Extra time for address list DNS records | `string` | `null` | no |
| allow_remote_requests | Allow remote DNS requests | `bool` | `true` | no |
| cache_max_ttl | Maximum cache TTL | `string` | `null` | no |
| cache_size | DNS cache size in KiB | `number` | `null` | no |
| doh_max_concurrent_queries | Max concurrent DoH queries | `number` | `null` | no |
| doh_max_server_connections | Max concurrent DoH connections | `number` | `null` | no |
| doh_timeout | DoH query timeout | `string` | `null` | no |
| max_concurrent_queries | Max concurrent DNS queries | `number` | `null` | no |
| max_concurrent_tcp_sessions | Max concurrent TCP sessions | `number` | `null` | no |
| max_udp_packet_size | Max UDP packet size | `number` | `null` | no |
| mdns_repeat_ifaces | Interfaces for mDNS repeater | `list(string)` | `null` | no |
| query_server_timeout | Query server timeout | `string` | `null` | no |
| query_total_timeout | Total query timeout | `string` | `null` | no |
| servers | List of DNS server IPs (fallback when DoH unavailable) | `list(string)` | `[]` | no |
| verify_doh_cert | Verify DoH certificate | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| dns_config_id | Resource ID of the DNS configuration |
