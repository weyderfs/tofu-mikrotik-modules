# vlan

Creates a single 802.1Q VLAN interface on a MikroTik bridge.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_interface_vlan.this | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vlan_id | 802.1Q VLAN ID | `number` | n/a | yes |
| vlan_name | Descriptive name for the VLAN | `string` | n/a | yes |
| bridge_name | Parent bridge interface name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| vlan_interface | VLAN interface name on the router |
| vlan_id | VLAN ID |