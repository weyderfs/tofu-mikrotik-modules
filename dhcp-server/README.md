# dhcp-server

Creates a complete DHCP server setup including IP pool and DHCP network configuration.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_pool.this | resource |
| routeros_ip_dhcp_server.this | resource |
| routeros_ip_dhcp_server_network.this | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vlan_name | Descriptive VLAN name for DHCP naming | `string` | n/a | yes |
| vlan_interface | VLAN interface name to bind DHCP server to | `string` | n/a | yes |
| vlan_subnet | Subnet in CIDR notation (e.g., `[IP_ADDRESS]/25`) | `string` | n/a | yes |
| dhcp_range | DHCP IP range (e.g., `[IP_ADDRESS]-[IP_ADDRESS]`) | `string` | n/a | yes |
| gateway | Default gateway IP for this VLAN | `string` | n/a | yes |
| dns_servers | List of DNS server IPs handed out via DHCP | `list(string)` | `[]` | no |
| lease_time | DHCP lease time in dd:hh:mm:ss format | `string` | `null` | no |
| pool_comment | Comment for the DHCP pool | `string` | `null` (auto-generated) | no |
| dhcp_server_comment | Comment for the DHCP server | `string` | `null` (auto-generated) | no |
| dhcp_network_comment | Comment for the DHCP server network | `string` | `null` (auto-generated) | no |
| add_arp | Add dynamic ARP entry | `bool` | `null` | no |
| address_lists | Address list for assigned addresses | `list(string)` | `null` | no |
| allow_dual_stack_queue | Create single queue for both IPv4 and IPv6 | `bool` | `null` | no |
| always_broadcast | Always send replies as broadcast | `bool` | `null` | no |
| authoritative | Authoritative DHCP response setting | `string` | `null` | no |
| bootp_lease_time | BOOTP lease time | `string` | `null` | no |
| bootp_support | BOOTP client support | `string` | `null` | no |
| client_mac_limit | Limit clients per MAC address | `number` | `null` | no |
| conflict_detection | Enable conflict detection | `bool` | `null` | no |
| delay_threshold | Delay threshold for DHCP packets | `string` | `null` | no |
| dhcp_option_set | Custom DHCP options set | `string` | `null` | no |
| disabled | Disable DHCP server | `bool` | `false` | no |
| dynamic_lease_identifiers | Dynamic lease identifier | `string` | `null` | no |
| insert_queue_before | Insert dynamic queue before this setting | `string` | `null` | no |
| lease_script | Script to run after lease assignment | `string` | `null` | no |
| parent_queue | Parent queue for dynamic entries | `string` | `null` | no |
| relay | IP address of DHCP relay | `string` | `null` | no |
| src_address | Source address for DHCP requests | `string` | `null` | no |
| support_broadband_tr101 | Support broadband TR101 | `bool` | `null` | no |
| use_framed_as_classless | Forward RADIUS framed routes as classless route | `bool` | `null` | no |
| use_radius | Use RADIUS server | `string` | `null` | no |
| use_reconfigure | Allow reconfigure messages | `bool` | `null` | no |
| next_pool | Next pool when no addresses available | `string` | `null` | no |
| network_comment | Comment for DHCP network block | `string` | `null` | no |
| boot_file_name | Boot filename for DHCP | `string` | `null` | no |
| caps_manager | CAPsMAN manager addresses | `list(string)` | `null` | no |
| dhcp_option | Additional DHCP options | `list(string)` | `null` | no |
| dns_none | Don't pass dynamic DNS servers | `bool` | `null` | no |
| domain | DNS domain for DHCP clients | `string` | `null` | no |
| netmask | Network mask for DHCP clients | `number` | `null` | no |
| next_server | Next server for bootstrap | `string` | `null` | no |
| ntp_none | Don't pass NTP servers | `bool` | `null` | no |
| ntp_servers | NTP servers for DHCP clients | `list(string)` | `null` | no |
| wins_servers | WINS servers for DHCP clients | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| dhcp_server_name | Name of the DHCP server instance |
| ip_pool_name | Name of the IP pool |