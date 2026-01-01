execute as @e[type=marker, tag=goob.enchantments.vein_mine.break_detector] at @s run function goob:enchantments/vein_mine/listen_for_break
execute if entity @e[type=marker, tag=goob.enchantments.vein_mine.break_detector] run schedule function goob:enchantments/vein_mine/listen_for_break_loop 1 replace
