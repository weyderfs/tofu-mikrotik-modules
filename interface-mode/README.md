# interface-mode

Configures a physical port as a bridge port with access or trunk mode on a MikroTik router.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_interface_bridge_port.this | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| port_name | Physical port name (e.g., ether2) | `string` | n/a | yes |
| bridge_name | Bridge name to attach the port to | `string` | n/a | yes |
| pvid | Primary VLAN ID for untagged traffic | `number` | `1` | no |
| tagged_vlans | VLAN IDs allowed as tagged (empty = access port) | `list(number)` | `[]` | no |
| comment | Comment for the bridge port | `string` | `null` (auto-generated) | no |
| disabled | Disable the bridge port | `bool` | `false` | no |
| auto_isolate | Prevent forwarding without BPDUs | `bool` | `null` | no |
| bpdu_guard | Enable BPDU guard | `bool` | `null` | no |
| broadcast_flood | Enable broadcast flood to egress ports | `bool` | `null` | no |
| edge | Edge port mode: yes, no, auto-discover | `string` | `null` | no |
| fast_leave | Enable IGMP fast leave | `bool` | `null` | no |
| frame_types | Allowed ingress frame types | `string` | `null` | no |
| horizon | Split horizon bridging value | `string` | `null` | no |
| hw | Enable hardware offloading | `bool` | `null` | no |
| ingress_filtering | Enable VLAN ingress filtering | `bool` | `null` | no |
| internal_path_cost | MSTI0 internal path cost | `number` | `null` | no |
| learn | MAC learning behavior | `string` | `null` | no |
| multicast_router | IGMP membership report forwarding setting | `string` | `null` | no |
| mvrp_applicant_state | MVRP applicant options | `string` | `null` | no |
| mvrp_registrar_state | MVRP registrar options | `string` | `null` | no |
| path_cost | Path cost for STP/MSTP | `string` | `null` | no |
| point_to_point | Point-to-point link setting | `string` | `null` | no |
| priority | Interface priority for STP/MSTP | `string` | `null` | no |
| restricted_role | Enable restricted role | `bool` | `null` | no |
| restricted_tcn | Disable topology change notifications | `bool` | `null` | no |
| tag_stacking | Force untagged packets to be retagged | `bool` | `null` | no |
| trusted | Allow DHCP packets from untrusted ports | `bool` | `null` | no |
| unknown_multicast_flood | Enable unknown multicast flood | `bool` | `null` | no |
| unknown_unicast_flood | Enable unknown unicast flood | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| bridge_port_id | Resource ID of the bridge port configuration |