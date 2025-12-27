execute as @e[type=marker, tag=goob.enchantments.definitions.vein_mine.current] at @s run function goob:enchantments/definitions/vein_mine/propagate
execute if entity @e[type=marker, tag=goob.enchantments.definitions.vein_mine.current] run schedule function goob:enchantments/definitions/vein_mine/propagate_loop 1 replace
