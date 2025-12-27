tag @s remove goob.enchantments.definitions.vein_mine.current
execute positioned ~1 ~ ~ if block ~ ~ ~ #goob:enchantments/definitions/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.definitions.vein_mine, distance=..0.9] run function goob:enchantments/definitions/vein_mine/summon_breaker
execute positioned ~-1 ~ ~ if block ~ ~ ~ #goob:enchantments/definitions/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.definitions.vein_mine, distance=..0.9] run function goob:enchantments/definitions/vein_mine/summon_breaker
execute positioned ~ ~1 ~ if block ~ ~ ~ #goob:enchantments/definitions/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.definitions.vein_mine, distance=..0.9] run function goob:enchantments/definitions/vein_mine/summon_breaker
execute positioned ~ ~-1 ~ if block ~ ~ ~ #goob:enchantments/definitions/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.definitions.vein_mine, distance=..0.9] run function goob:enchantments/definitions/vein_mine/summon_breaker
execute positioned ~ ~ ~1 if block ~ ~ ~ #goob:enchantments/definitions/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.definitions.vein_mine, distance=..0.9] run function goob:enchantments/definitions/vein_mine/summon_breaker
execute positioned ~ ~ ~-1 if block ~ ~ ~ #goob:enchantments/definitions/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.definitions.vein_mine, distance=..0.9] run function goob:enchantments/definitions/vein_mine/summon_breaker
kill @s
