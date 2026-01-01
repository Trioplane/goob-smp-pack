execute as @e[type=marker, tag=goob.enchantments.vein_mine.current] at @s run function goob:enchantments/vein_mine/propagate
execute if entity @e[type=marker, tag=goob.enchantments.vein_mine.current] run schedule function goob:enchantments/vein_mine/propagate_loop 1 replace
