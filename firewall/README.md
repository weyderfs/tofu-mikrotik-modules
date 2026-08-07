# firewall

Configures IPv4 firewall filter and NAT rules on MikroTik. Implements inter-VLAN isolation between IoT, LAN, and Guest, with explicit exceptions for IoT-to-server access (Home Assistant TCP/8123, AdGuard DNS TCP+UDP/53).

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_firewall_filter | resource (16 instances) |
| routeros_ip_firewall_nat | resource (3 instances) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| wan_interface | WAN interface name | `string` | n/a | yes |
| bridge_name | Bridge interface name for LAN management | `string` | n/a | yes |
| iot_subnet | IoT VLAN subnet in CIDR notation | `string` | n/a | yes |
| lan_subnet | LAN VLAN subnet in CIDR notation | `string` | n/a | yes |
| guest_subnet | Guest VLAN subnet in CIDR notation | `string` | n/a | yes |
| server_ip | Server IP on VLAN 20 | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| filter_rules_applied | Number of filter rules provisioned |
| nat_rules_applied | Number of NAT masquerade rules provisioned |