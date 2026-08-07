# doh

Configures MikroTik DNS-over-HTTPS server settings and enables remote DNS requests.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_dns.doh | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| doh_upstream_url | DoH upstream URL | `string` |`"https://dns.quad9.net/dns-query"` | no |
| doh_upstream_addresses | Upstream DNS server IPs for fallback | `list(string)` | `["[IP_ADDRESS]", "[IP_ADDRESS]"]` | no |

## Outputs

| Name | Description |
|------|-------------|
| dns_config_id | Resource ID of the DNS configuration |