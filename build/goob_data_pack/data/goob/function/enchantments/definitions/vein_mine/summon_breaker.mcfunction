summon marker ~ ~ ~ {Tags: ["goob.enchantments.definitions.vein_mine", "goob.enchantments.definitions.vein_mine.current", "goob.enchantments.definitions.vein_mine.current.temp"]}
scoreboard players operation @n[type=marker, tag=goob.enchantments.definitions.vein_mine.current.temp] goob.id = @s goob.id
scoreboard players operation @n[type=marker, tag=goob.enchantments.definitions.vein_mine.current.temp] goob.enchantments.definitions.vein_mine.depth = @s goob.enchantments.definitions.vein_mine.depth
scoreboard players add @n[type=marker, tag=goob.enchantments.definitions.vein_mine.current.temp] goob.enchantments.definitions.vein_mine.depth 1
execute as @e[type=armor_stand, tag=goob.enchantments.definitions.vein_mine.tool] if score @s goob.id = @n[type=marker, tag=goob.enchantments.definitions.vein_mine.current.temp] goob.id run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
execute as @n[type=marker, tag=goob.enchantments.definitions.vein_mine.current.temp] if score @s goob.enchantments.definitions.vein_mine.depth matches 30.. run return run kill @s
tag @n[type=marker, tag=goob.enchantments.definitions.vein_mine.current.temp] remove goob.enchantments.definitions.vein_mine.current.temp
