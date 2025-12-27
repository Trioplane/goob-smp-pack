tag @s add goob.enchantments.definitions.vein_mine.tool.temp
tag @s remove goob.enchantments.definitions.vein_mine.tool.alive
execute as @e[type=marker, tag=goob.enchantments.definitions.vein_mine] if score @s goob.id = @n[type=armor_stand, tag=goob.enchantments.definitions.vein_mine.tool.temp] goob.id run tag @n[type=armor_stand, tag=goob.enchantments.definitions.vein_mine.tool.temp] add goob.enchantments.definitions.vein_mine.tool.alive
tag @s remove goob.enchantments.definitions.vein_mine.tool.temp
