# firewall

Creates IPv4 firewall filter and NAT rules on MikroTik. Consumer defines rules as lists of objects — no embedded rules. Exposes all `routeros_ip_firewall_filter` and `routeros_ip_firewall_nat` attributes.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_firewall_filter.this | resource (one per filter_rules entry) |
| routeros_ip_firewall_nat.this | resource (one per nat_rules entry) |

## Input Variables

### filter_rules

List of firewall filter rule objects.

Required fields:
- `action` (string)
- `chain` (string)

Optional fields (all `string` unless noted):
`address_list`, `address_list_timeout`, `comment`, `connection_bytes`, `connection_limit`, `connection_mark`, `connection_nat_state`, `connection_rate`, `connection_state`, `connection_type`, `content`, `disabled` (bool), `dscp` (number), `dst_address`, `dst_address_list`, `dst_address_type`, `dst_limit`, `dst_port`, `fragment` (bool), `hotspot`, `hw_offload` (bool), `icmp_options`, `in_bridge_port`, `in_bridge_port_list`, `in_interface`, `in_interface_list`, `ingress_priority` (number), `ipsec_policy`, `ipv4_options`, `jump_target`, `layer7_protocol`, `limit`, `log` (bool), `log_prefix`, `nth`, `out_bridge_port`, `out_bridge_port_list`, `out_interface`, `out_interface_list`, `packet_mark`, `packet_size`, `per_connection_classifier`, `place_before`, `port`, `priority` (number), `protocol`, `psd`, `random` (number), `reject_with`, `routing_mark`, `routing_table`, `src_address`, `src_address_list`, `src_address_type`, `src_mac_address`, `src_port`, `tcp_flags`, `tcp_mss`, `time`, `tls_host`, `ttl`.

### nat_rules

List of NAT rule objects.

Required fields:
- `action` (string)
- `chain` (string)

Optional fields (all `string` unless noted):
`address_list`, `address_list_timeout`, `comment`, `connection_bytes`, `connection_limit`, `connection_mark`, `connection_rate`, `connection_type`, `content`, `disabled` (bool), `dscp` (number), `dst_address`, `dst_address_list`, `dst_address_type`, `dst_limit`, `dst_port`, `fragment` (bool), `hotspot`, `icmp_options`, `in_bridge_port`, `in_bridge_port_list`, `in_interface`, `in_interface_list`, `ingress_priority` (number), `ipsec_policy`, `ipv4_options`, `jump_target`, `layer7_protocol`, `limit`, `log` (bool), `log_prefix`, `nth`, `out_bridge_port`, `out_bridge_port_list`, `out_interface`, `out_interface_list`, `packet_mark`, `packet_size`, `per_connection_classifier`, `place_before`, `port`, `priority` (number), `protocol`, `psd`, `random` (number), `randomise_ports` (bool), `routing_mark`, `same_not_by_dst` (bool), `socks5_port` (number), `socks5_server`, `socksify_service`, `src_address`, `src_address_list`, `src_address_type`, `src_mac_address`, `src_port`, `tcp_mss`, `time`, `to_addresses`, `to_ports`, `ttl`.

## Outputs

| Name | Description |
|------|-------------|
| filter_rules | Map of created filter rule resources |
| nat_rules | Map of created NAT rule resources |
