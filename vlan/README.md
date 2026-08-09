# vlan

Creates a VLAN interface on a MikroTik router attached to a physical bridge.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_interface_vlan.this | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vlan_id | 802.1Q VLAN ID | `number` | n/a | yes |
| vlan_name | Descriptive name for the VLAN | `string` | n/a | yes |
| bridge_name | Parent bridge interface name | `string` | n/a | yes |
| comment | Comment for the VLAN interface | `string` | `null` (auto-generated) | no |
| disabled | Disable the VLAN interface | `bool` | `false` | no |
| arp | ARP mode: disabled, enabled, local-proxy-arp, proxy-arp, reply-only | `string` | `null` | no |
| arp_timeout | ARP timeout (e.g., 30s, 5m, 1h) | `string` | `null` | no |
| mtu | MTU for the VLAN interface | `number` | `null` | no |
| hw_offloaded | Hardware offload for VLAN interface | `bool` | `null` | no |
| mvrp | Enable MVRP (RouterOS 7.15+) | `bool` | `null` | no |
| use_service_tag | Use service tag for VLAN registration | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| vlan_interface | VLAN interface name on the router |
| vlan_id | VLAN ID |