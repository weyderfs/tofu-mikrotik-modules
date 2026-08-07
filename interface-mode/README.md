# interface-mode

Configures a physical port as either a trunk port (tagged VLANs) or an access port (single untagged VLAN) on a MikroTik bridge.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_interface_bridge_port.this | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| port_name | Physical port name | `string` | n/a | yes |
| bridge_name | Bridge name to attach the port to | `string` | n/a | yes |
| pvid | PVID for untagged ingress traffic | `number` | `1` | no |
| tagged_vlans | List of VLAN IDs for trunk mode; empty means access mode | `list(number)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| bridge_port_id | Resource ID of the bridge port configuration |