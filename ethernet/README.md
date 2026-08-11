# Ethernet

Configura uma interface Ethernet física no MikroTik. Expondo todos os atributos de `routeros_interface_ethernet`. Útil para gerenciamento PoE e comentários.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_interface_ethernet.ethernet | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| factory_name | Identificador de hardware da porta física (ex: ether2) | `string` | n/a | yes |
| port_name | Nome da porta após eventuais renomes | `string` | n/a | yes |
| comment | Comentário para a interface Ethernet | `string` | `null` | no |
| poe_out | Modo de saída PoE: off, auto-on, forced-on | `string` | `null` | no |
| poe_priority | Prioridade PoE (0-99, menor = maior prioridade) | `number` | `null` | no |
| disabled | Desativar a interface Ethernet | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| port_name | Nome da porta (after rename) |
| id | ID do recurso da interface Ethernet |
| factory_name | Nome do hardware original da porta |