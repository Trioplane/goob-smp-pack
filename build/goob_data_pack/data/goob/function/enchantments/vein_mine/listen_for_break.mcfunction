scoreboard players add @s goob.enchantments.vein_mine.age 1
execute if block ~ ~ ~ #air run function goob:enchantments/vein_mine/listen_for_break/nested_execute_0
execute if score @s goob.enchantments.vein_mine.age matches 60.. run kill @s
