# bridge

Creates a MikroTik hardware bridge with VLAN filtering enabled. All physical ports and VLAN interfaces attach to this bridge.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_interface_bridge.home | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bridge_name | Name of the bridge interface | `string` | n/a | yes |
| vlan_filtering | Enable VLAN filtering on the bridge | `bool` | `true` | no |
| comment | Comment for the bridge interface | `string` | `null` (auto-generated) | no |
| disabled | Disable the bridge interface | `bool` | `false` | no |
| admin_mac | Static MAC address (requires auto_mac=false) | `string` | `null` | no |
| auto_mac | Automatically select MAC from bridge ports | `bool` | `true` | no |
| ageing_time | How long to keep host info in bridge database | `string` | `null` | no |
| arp | ARP mode: disabled, enabled, local-proxy-arp, proxy-arp, reply-only | `string` | `null` | no |
| arp_timeout | ARP timeout (e.g., 30s, 5m, 1h) | `string` | `null` | no |
| dhcp_snooping | Enable DHCP snooping | `bool` | `null` | no |
| fast_forward | Enable fast forward | `bool` | `null` | no |
| forward_delay | Forward delay during bridge initialization | `string` | `null` | no |
| frame_types | Allowed frame types on bridge port | `string` | `null` | no |
| igmp_snooping | Enable IGMP snooping | `bool` | `null` | no |
| igmp_version | IGMP version for queries | `number` | `null` | no |
| ingress_filtering | Enable VLAN ingress filtering | `bool` | `null` | no |
| last_member_interval | IGMP last member interval | `string` | `null` | no |
| last_member_query_count | IGMP last member query count | `number` | `null` | no |
| max_hops | Bridge count which BPDU can pass in MSTP | `number` | `null` | no |
| max_learned_entries | Maximum learning entries | `string` | `null` | no |
| max_message_age | Max Age in BPDU (6s..40s) | `string` | `null` | no |
| membership_interval | IGMP membership interval | `string` | `null` | no |
| mtu | MTU for the bridge interface | `number` | `null` | no |
| multicast_querier | Enable multicast querier | `bool` | `null` | no |
| multicast_router | Multicast router port setting | `string` | `null` | no |
| mvrp | Enable MVRP (RouterOS 7.15+) | `bool` | `null` | no |
| port_cost_mode | Port path cost mode | `string` | `null` | no |
| priority | Bridge priority for STP/MSTP | `string` | `null` | no |
| protocol_mode | Spanning tree protocol: none, stp, rstp, mstp | `string` | `null` | no |
| querier_interval | IGMP querier interval | `string` | `null` | no |
| query_interval | IGMP query interval | `string` | `null` | no |
| query_response_interval | IGMP query response interval | `string` | `null` | no |
| region_name | MSTP region name | `string` | `null` | no |
| region_revision | MSTP region revision number | `number` | `null` | no |
| startup_query_count | Number of startup queries | `number` | `null` | no |
| startup_query_interval | Startup query interval | `string` | `null` | no |
| transmit_hold_count | Transmit hold count | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| bridge_name | Name of the created bridge |