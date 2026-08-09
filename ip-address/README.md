# ip-address

Assigns an IP address to a VLAN interface on a MikroTik router.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_address.this | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vlan_interface | VLAN interface name to assign the IP to | `string` | n/a | yes |
| address | IP address with network prefix (e.g., `192.168.1.1/24`) | `string` | n/a | yes |
| network | Network address (auto-determined for /32, configurable for others) | `string` | `null` | no |
| comment | Comment for the IP address | `string` | `null` (auto-generated) | no |
| disabled | Disable the IP address | `bool` | `false` | no |
| vrf | VRF table this IP address operates on | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| ip_address_id | Resource ID of the assigned IP address |