# Ethernet Switch Port

Configura o modo VLAN de uma porta do switch chip no MikroTik. Expondo todos os atributos de `routeros_interface_ethernet_switch_port`. Usado para definir portas access/trunk em dispositivos com VLAN switching em hardware (ex: QCA8337 em RB9xx/hEX).

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_interface_ethernet_switch_port.this | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| port_name | Nome da porta do switch (ex: ether2, switch1-cpu) | `string` | n/a | yes |
| vlan_mode | Modo de consulta a tabela VLAN para ingresso: check, disabled, fallback, secure | `string` | `null` | no |
| vlan_header | Ação para tráfego de egresso: add-if-missing, always-strip, leave-as-is | `string` | `null` | no |
| default_vlan_id | ID da VLAN aplicado ao tráfego não taggeado de ingresso (access/hybrid) | `string` | `null` | no |
| l3_hw_offloading | Level 3 hardware offloading | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| port_name | Nome da porta do switch |
| id | ID do recurso da porta do switch |
| vlan_mode | Modo de consulta a tabela VLAN |

## Notas

- Em QCA8337/Atheros8327, usar `vlan_header=leave-as-is` e definir portas access via `default_vlan_id`
- `switch` é computado pelo RouterOS (não configurável)