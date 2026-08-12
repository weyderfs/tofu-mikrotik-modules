# Ethernet Switch VLAN

Configura uma entrada na tabela VLAN do switch chip no MikroTik. Expondo todos os atributos de `routeros_interface_ethernet_switch_vlan`. Usado para VLAN switching em hardware offload (ex: QCA8337 em RB9xx/hEX).

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_interface_ethernet_switch_vlan.this | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| switch | Nome do switch chip (ex: switch1) | `string` | n/a | yes |
| vlan_id | ID da VLAN para a entrada da tabela do switch | `number` | n/a | yes |
| ports | Lista de portas membro para a VLAN (incluir switch1-cpu para acesso ao CPU) | `list(string)` | n/a | yes |
| comment | Comentário para a entrada da tabela VLAN do switch | `string` | `null` | no |
| disabled | Desativar a entrada da tabela VLAN | `bool` | `null` | no |
| independent_learning | Usar Independent VLAN Learning (IVL) ao invés de Shared (SVL) | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | ID da entrada da tabela VLAN do switch |
| vlan_id | ID da VLAN |
| switch | Nome do switch chip |
| ports | Portas membro para a VLAN |

## Notas

- Incluir `switch1-cpu` nas entradas das VLANs para garantir acesso de gerenciamento via hardware
- Padrão para QCA8337/Atheros8327: `vlan-header=leave-as-is` (ver módulo `ethernet-switch-port`)