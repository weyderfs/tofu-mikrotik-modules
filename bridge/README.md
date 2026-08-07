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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bridge_name | Name of the hardware bridge | `string` | `"bridge-home"` | no |

## Outputs

| Name | Description |
|------|-------------|
| bridge_name | Name of the created bridge |