tag @s remove goob.enchantments.vein_mine.current
execute positioned ~1 ~ ~ if block ~ ~ ~ #goob:enchantments/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.vein_mine, distance=..0.9] run function goob:enchantments/vein_mine/summon_breaker
execute positioned ~-1 ~ ~ if block ~ ~ ~ #goob:enchantments/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.vein_mine, distance=..0.9] run function goob:enchantments/vein_mine/summon_breaker
execute positioned ~ ~1 ~ if block ~ ~ ~ #goob:enchantments/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.vein_mine, distance=..0.9] run function goob:enchantments/vein_mine/summon_breaker
execute positioned ~ ~-1 ~ if block ~ ~ ~ #goob:enchantments/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.vein_mine, distance=..0.9] run function goob:enchantments/vein_mine/summon_breaker
execute positioned ~ ~ ~1 if block ~ ~ ~ #goob:enchantments/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.vein_mine, distance=..0.9] run function goob:enchantments/vein_mine/summon_breaker
execute positioned ~ ~ ~-1 if block ~ ~ ~ #goob:enchantments/vein_mine/group unless entity @n[type=marker, tag=goob.enchantments.vein_mine, distance=..0.9] run function goob:enchantments/vein_mine/summon_breaker
kill @s
