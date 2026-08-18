# tofu-mikrotik-modules

Terraform modules for MikroTik RouterOS resources using terraform-routeros/provider.

## Module Structure

Each module manages exactly one Terraform resource type, following the AWS module pattern:

### Interface Resources
- `bridge/` - `routeros_interface_bridge`
- `bridge-port/` - `routeros_interface_bridge_port`
- `bridge-vlan/` - `routeros_interface_bridge_vlan` (DEPRECATED — veja README do módulo)
- `vlan/` - `routeros_interface_vlan`
- `ethernet/` - `routeros_interface_ethernet`
- `pppoe-client/` - `routeros_interface_pppoe_client`

### IP Resources
- `dhcp-pool/` - `routeros_ip_pool`
- `dhcp-server-network/` - `routeros_ip_dhcp_server_network`
- `dhcp-server/` - `routeros_ip_dhcp_server`
- `ip-address/` - `routeros_ip_address`
- `dns/` - `routeros_ip_dns` (was `doh/`)

### Firewall Resources
- `firewall-filter/` - `routeros_ip_firewall_filter`
- `firewall-nat/` - `routeros_ip_firewall_nat`

## Provider Requirements

- terraform-routeros/routeros >= 1.99.1
- RouterOS 7.x

## Usage

```hcl
module "bridge_port" {
  source = "github.com/weyderfs/tofu-mikrotik-modules//bridge-port?ref=main"
  
  bridge_name = "bridge-azeroth"
  port_name   = "ether2"
  pvid        = 20
  frame_types = "admit-only-untagged-and-priority-tagged"
}
```

## Design Principles

1. Single resource per module
2. No `terraform {}` blocks in modules
3. No `required_providers` in modules
4. All optional attributes exposed as variables
5. Descriptive output names

## License

MIT