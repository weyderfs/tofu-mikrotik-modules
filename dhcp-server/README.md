# dhcp-server

Provisions an IP pool, DHCP server, and DHCP network for a single VLAN on MikroTik.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_pool.this | resource |
| routeros_ip_dhcp_server.this | resource |
| routeros_ip_dhcp_server_network.this | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vlan_name | Descriptive VLAN name for DHCP naming | `string` | n/a | yes |
| vlan_interface | VLAN interface name to bind DHCP server to | `string` | n/a | yes |
| vlan_subnet | Subnet in CIDR notation | `string` | n/a | yes |
| dhcp_range | DHCP IP range | `string` | n/a | yes |
| gateway | Default gateway IP for this VLAN | `string` | n/a | yes |
| dns_servers | List of DNS server IPs handed out via DHCP | `list(string)` | n/a | yes |
| lease_time | DHCP lease time in RouterOS format | `string` | `"1d 00:00:00"` | no |

## Outputs

| Name | Description |
|------|-------------|
| dhcp_server_name | Name of the DHCP server instance |
| ip_pool_name | Name of the IP pool |