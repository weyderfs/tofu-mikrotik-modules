# Firewall NAT

Cria regras NAT do firewall IPv4 no MikroTik. Expondo todos os atributos de `routeros_ip_firewall_nat`.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_firewall_nat.this | resource (one per nat_rules entry) |

## Input Variables

O parâmetro `nat_rules` recebe uma lista de objetos. Campos obrigatórios:

- `action` (string) - Ação da regra
- `chain` (string) - Cadeia do firewall

Campos opcionais (todos `string` ou `bool` conforme documentação):

`address_list`, `address_list_timeout`, `comment`, `connection_bytes`, `connection_limit`, `connection_mark`, `connection_rate`, `connection_type`, `content`, `disabled`, `dscp`, `dst_address`, `dst_address_list`, `dst_address_type`, `dst_limit`, `dst_port`, `fragment`, `hotspot`, `icmp_options`, `in_bridge_port`, `in_bridge_port_list`, `in_interface`, `in_interface_list`, `ingress_priority`, `ipsec_policy`, `ipv4_options`, `jump_target`, `layer7_protocol`, `limit`, `log`, `log_prefix`, `nth`, `out_bridge_port`, `out_bridge_port_list`, `out_interface`, `out_interface_list`, `packet_mark`, `packet_size`, `per_connection_classifier`, `place_before`, `port`, `priority`, `protocol`, `psd`, `random`, `randomise_ports`, `routing_mark`, `same_not_by_dst`, `socks5_port`, `socks5_server`, `socksify_service`, `src_address`, `src_address_list`, `src_address_type`, `src_mac_address`, `src_port`, `tcp_mss`, `time`, `to_addresses`, `to_ports`, `ttl`

## Outputs

| Name | Description |
|------|-------------|
| nat_rules | Mapa de regras NAT criadas |