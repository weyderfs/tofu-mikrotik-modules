# DHCP Server Network

Configura uma rede DHCP no MikroTik. Expondo todos os atributos de `routeros_ip_dhcp_server_network`. Parte da configuração completa do DHCP.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_dhcp_server_network.this | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vlan_subnet | SubRede em notação CIDR (ex: `[IP_ADDRESS]/25`) | `string` | n/a | yes |
| gateway | IP do gateway padrão | `string` | n/a | yes |
| dns_servers | Lista de servidores DNS a serem passados via DHCP | `list(string)` | `[]` | no |
| comment | Comentário para a rede DHCP | `string` | `null` | no |
| boot_file_name | Nome do arquivo de boot para DHCP | `string` | `null` | no |
| caps_manager | Endereços do gerenciador CAPsMAN | `list(string)` | `null` | no |
| dhcp_option | Opções DHCP adicionais | `list(string)` | `null` | no |
| dhcp_option_set | Conjunto de opções DHCP personalizado | `string` | `null` | no |
| dns_none | Não passar servidores DNS dinâmicos | `bool` | `null` | no |
| domain | Domínio DNS para clientes DHCP | `string` | `null` | no |
| netmask | Máscara de rede para clientes DHCP | `number` | `null` | no |
| next_server | Servidor Bootstrap | `string` | `null` | no |
| ntp_none | Não passar servidores NTP | `bool` | `null` | no |
| ntp_servers | Servidores NTP para clientes DHCP | `list(string)` | `null` | no |
| wins_servers | Servidores WINS para clientes DHCP | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| address | Endereço da rede DHCP |
| id | ID do recurso da rede DHCP |

## Dependências

Este módulo deve ser aplicado após `dhcp-server` (o recurso `routeros_ip_dhcp_server` deve existir).