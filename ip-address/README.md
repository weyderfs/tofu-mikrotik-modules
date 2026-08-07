# ip-address

Assigns an IP address to a VLAN interface on MikroTik. Used for gateway addresses.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_address.this | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vlan_interface | VLAN interface name to assign the IP to | `string` | n/a | yes |
| address | IP address with network prefix | `string` | n/a | yes |
| network | Network address | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| ip_address_id | Resource ID of the assigned IP address |