# Firewall Filter

Cria regras de filtro de firewall IPv4 no MikroTik. Expondo todos os atributos de `routeros_ip_firewall_filter`.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_firewall_filter.this | resource (one per filter_rules entry) |

## Input Variables

O parâmetro `filter_rules` recebe uma lista de objetos. Campos obrigatórios:

- `action` (string) - Ação da regra
- `chain` (string) - Cadeia do firewall

Campos opcionais (todos `string` ou `bool` conforme documentação):

`address_list`, `address_list_timeout`, `comment`, `connection_bytes`, `connection_limit`, `connection_mark`, `connection_nat_state`, `connection_rate`, `connection_state`, `connection_type`, `content`, `disabled`, `dscp`, `dst_address`, `dst_address_list`, `dst_address_type`, `dst_limit`, `dst_port`, `fragment`, `hotspot`, `hw_offload`, `icmp_options`, `in_bridge_port`, `in_bridge_port_list`, `in_interface`, `in_interface_list`, `ingress_priority`, `ipsec_policy`, `ipv4_options`, `jump_target`, `layer7_protocol`, `limit`, `log`, `log_prefix`, `nth`, `out_bridge_port`, `out_bridge_port_list`, `out_interface`, `out_interface_list`, `packet_mark`, `packet_size`, `per_connection_classifier`, `place_before`, `port`, `priority`, `protocol`, `psd`, `random`, `reject_with`, `routing_mark`, `routing_table`, `src_address`, `src_address_list`, `src_address_type`, `src_mac_address`, `src_port`, `tcp_flags`, `tcp_mss`, `time`, `tls_host`, `ttl`

## Outputs

| Name | Description |
|------|-------------|
| filter_rules | Mapa de regras de filtro criadas |