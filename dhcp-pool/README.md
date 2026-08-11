# DHCP Pool

Cria um pool de endereços IP para uso pelo servidor DHCP no MikroTik. Expondo todos os atributos de `routeros_ip_pool`.

## Providers

| Name | Version |
|------|---------|
| routeros | >= 1.99.1 |

## Resources

| Name | Type |
|------|------|
| routeros_ip_pool.this | resource |

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| pool_name | Nome do pool de IP | `string` | n/a | yes |
| ranges | Faixa de IP no formato 'IP-IP' (ex: `[IP_ADDRESS]-[IP_ADDRESS]`) | `string` | n/a | yes |
| comment | Comentário para o pool | `string` | `null` | no |
| next_pool | Pool de IP de fallback quando este estiver esgotado | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| pool_name | Nome do pool de IP |
| id | ID do pool IP |
| ranges | Faixas de IP configuradas |