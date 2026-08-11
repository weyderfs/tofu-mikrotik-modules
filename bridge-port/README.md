# Bridge Port

Configura uma porta física como porta da ponte no MikroTik. Expondo todos os atributos de `routeros_interface_bridge_port`.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_interface_bridge_port.this | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bridge_name | Nome da ponte para anexar a porta | `string` | n/a | yes |
| port_name | Nome da porta física (ex: ether2) | `string` | n/a | yes |
| pvid | ID da VLAN primária para tráfego não taggeado | `number` | `1` | no |
| comment | Comentário para a porta da ponte | `string` | `null` | no |
| disabled | Desativar a porta da ponte | `bool` | `false` | no |
| auto_isolate | Prevenir encaminhamento sem BPDUs | `bool` | `null` | no |
| bpdu_guard | Habilitar proteção BPDU | `bool` | `null` | no |
| broadcast_flood | Habilitar broadcast flood para portas de saída | `bool` | `null` | no |
| edge | Modo de porta edge: yes, no, auto-discover | `string` | `null` | no |
| fast_leave | Habilitar IGMP fast leave | `bool` | `null` | no |
| frame_types | Tipos de frame permitidos para ingresso | `string` | `null` | no |
| horizon | Valor de split horizon bridging | `string` | `null` | no |
| hw | Habilitar hardware offloading | `bool` | `null` | no |
| ingress_filtering | Habilitar filtragem de ingresso VLAN | `bool` | `null` | no |
| internal_path_cost | Custo de caminho interno MSTI0 | `number` | `null` | no |
| learn | Comportamento de aprendizado MAC | `string` | `null` | no |
| multicast_router | Configuração de roteador multicast IGMP | `string` | `null` | no |
| mvrp_applicant_state | Opções de estado de solicitante MVRP | `string` | `null` | no |
| mvrp_registrar_state | Opções de estado de registrador MVRP | `string` | `null` | no |
| path_cost | Custo de caminho para STP/MSTP | `string` | `null` | no |
| point_to_point | Configuração de link ponto-a-ponto | `string` | `null` | no |
| priority | Prioridade da interface para STP/MSTP | `string` | `null` | no |
| restricted_role | Habilitar restricted role | `bool` | `null` | no |
| restricted_tcn | Desativar notificações de mudança de topologia | `bool` | `null` | no |
| tag_stacking | Forçar re-tagging de pacotes não taggeados | `bool` | `null` | no |
| trusted | Permitir pacotes DHCP de portas não confiáveis | `bool` | `null` | no |
| unknown_multicast_flood | Habilitar unknown multicast flood | `bool` | `null` | no |
| unknown_unicast_flood | Habilitar unknown unicast flood | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| port_name | Nome da porta na ponte |
| bridge | Nome da ponte |
| id | ID do recurso da porta da ponte |

## Notas

- Para membros de VLAN (tagged/untagged), use o módulo `bridge-vlan`
- A configuração de `pvid` e `frame_types` controla o tipo de porta (acesso/trunk)