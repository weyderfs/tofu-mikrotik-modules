# bridge-vlan — DEPRECATED

> ⚠️ **Não usar.** VLAN filtering por bridge (`/interface bridge vlan`) NÃO é
> suportado com hardware offload no switch-chip QCA8337 do RB960PGS (hEX PoE).
> Usar o método switch-chip: módulos `ethernet-switch-vlan` + `ethernet-switch-port`
> com `vlan_mode=secure`. Ver `home-iac/docs/superpowers/plans/2026-08-13-mikrotik-switch-chip-safe-apply.md`.
