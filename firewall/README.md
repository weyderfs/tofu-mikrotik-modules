# firewall

Configures firewall rules and NAT masquerade for a MikroTik router with VLAN-based segmentation.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_firewall_filter.[...] | resource (16 filter rules) |
| routeros_ip_firewall_nat.[...] | resource (3 NAT rules) |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| wan_interface | WAN interface name (e.g., ether1) | `string` | n/a | yes |
| bridge_name | Bridge interface name for LAN management | `string` | n/a | yes |
| iot_subnet | IoT VLAN subnet in CIDR notation | `string` | n/a | yes |
| lan_subnet | LAN VLAN subnet in CIDR notation | `string` | n/a | yes |
| guest_subnet | Guest VLAN subnet in CIDR notation | `string` | n/a | yes |
| server_ip | Server IP on VLAN 20 (AdGuard Home, Home Assistant) | `string` | n/a | yes |
| server_ports | Map of service names to ports (e.g., {ha = "8123", dns = "53"}) | `map(string)` | `{}` | no |
| dns_ports | DNS ports to use (default: 53) | `list(string)` | `["53"]` | no |
| icmp_accept | Accept ICMP on bridge/LAN interface | `bool` | `true` | no |

## Firewall Rules

### Input Chain (4 rules)
- Accept established/related connections
- Accept ICMP (configurable)
- Drop all WAN input
- Accept LAN management

### Forward Chain (12 rules)
- Accept established/related
- Block Guest→IoT, Guest→LAN
- Block IoT→LAN (with exceptions)
- Allow IoT→Home Assistant (port configurable via `server_ports.ha`)
- Allow IoT→DNS (ports configurable via `dns_ports`)
- Block LAN→IoT, LAN→Guest
- Allow LAN/IoT/Guest→WAN
- Default drop

### NAT Chain (3 rules)
- Masquerade IoT subnet
- Masquerade LAN subnet
- Masquerade Guest subnet

## Outputs

| Name | Description |
|------|-------------|
| filter_rules_applied | Number of filter rules provisioned |
| nat_rules_applied | Number of NAT masquerade rules provisioned |