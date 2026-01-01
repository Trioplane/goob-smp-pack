execute as @e[type=armor_stand, tag=goob.enchantments.vein_mine.tool.alive] run function goob:enchantments/vein_mine/tool_loop/nested_execute_0
execute as @e[type=armor_stand, tag=goob.enchantments.vein_mine.tool, tag=!goob.enchantments.vein_mine.tool.alive] run kill @s
execute if entity @e[type=armor_stand, tag=goob.enchantments.vein_mine.tool] run schedule function goob:enchantments/vein_mine/tool_loop 10 replace
