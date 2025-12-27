execute if entity @n[type=marker, tag=goob.enchantments.definitions.vein_mine.break_detector, distance=..1] run return fail
execute summon marker run function goob:enchantments/definitions/vein_mine/summon_break_detector/nested_execute_0
summon armor_stand ~ ~ ~ {Tags: ["goob.enchantments.definitions.vein_mine.tool", "goob.enchantments.definitions.vein_mine.tool.temp", "goob.enchantments.definitions.vein_mine.tool.alive"], ShowArms: true, Marker: true, Invisible: true}
item replace entity @n[type=armor_stand, tag=goob.enchantments.definitions.vein_mine.tool.temp] contents from entity @s weapon.mainhand
scoreboard players operation @n[type=marker, tag=goob.enchantments.definitions.vein_mine.break_detector.temp] goob.id = @n[type=armor_stand, tag=goob.enchantments.definitions.vein_mine.tool.temp] goob.id
tag @n[type=marker, tag=goob.enchantments.definitions.vein_mine.break_detector.temp] remove goob.enchantments.definitions.vein_mine.break_detector.temp
tag @n[type=armor_stand, tag=goob.enchantments.definitions.vein_mine.tool.temp] remove goob.enchantments.definitions.vein_mine.tool.temp
schedule function goob:enchantments/definitions/vein_mine/listen_for_break_loop 1 replace
schedule function goob:enchantments/definitions/vein_mine/tool_loop 1 replace
