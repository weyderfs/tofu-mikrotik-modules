# bridge-vlan

Creates a MikroTik `/interface bridge vlan` membership entry (`routeros_interface_bridge_vlan`).

Required for bridge VLAN filtering: maps VLAN IDs to tagged/untagged ports. Include the bridge itself in `tagged` so the CPU can route and manage on VLAN interfaces.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_interface_bridge_vlan.this | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bridge_name | Bridge interface name | `string` | n/a | yes |
| vlan_ids | VLAN IDs (set of strings; ranges ok) | `set(string)` | n/a | yes |
| tagged | Tagged egress interfaces (include bridge for CPU) | `set(string)` | `null` | no |
| untagged | Untagged egress interfaces (access) | `set(string)` | `null` | no |
| comment | Comment | `string` | `null` | no |
| disabled | Disable entry | `bool` | `null` | no |
| mvrp_forbidden | MVRP forbidden ports | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Resource ID |
| bridge_name | Bridge name |
| vlan_ids | VLAN IDs |
| tagged | Tagged members |
| untagged | Untagged members |

## Notes

- Enable `vlan-filtering=yes` on the bridge only **after** membership + management IP are ready.
- One hardware-offloaded bridge per switch chip on hEX/RB9xx — do not add a second bridge for VLANs.
