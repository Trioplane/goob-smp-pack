execute if items entity @s weapon.mainhand wooden_pickaxe store result score @s goob.enchantments.destruction.rolled_number run random value 1..15
execute if items entity @s weapon.mainhand stone_pickaxe store result score @s goob.enchantments.destruction.rolled_number run random value 1..12
execute if items entity @s weapon.mainhand copper_pickaxe store result score @s goob.enchantments.destruction.rolled_number run random value 1..10
execute if items entity @s weapon.mainhand iron_pickaxe store result score @s goob.enchantments.destruction.rolled_number run random value 1..8
execute if items entity @s weapon.mainhand golden_pickaxe store result score @s goob.enchantments.destruction.rolled_number run random value 1..20
execute if items entity @s weapon.mainhand diamond_pickaxe store result score @s goob.enchantments.destruction.rolled_number run random value 1..3
execute if items entity @s weapon.mainhand netherite_pickaxe store result score @s goob.enchantments.destruction.rolled_number run random value 1..2
execute if score @s goob.enchantments.destruction.rolled_number matches 1 run return run function goob:enchantments/destruction/success_break
function goob:enchantments/destruction/fail_break
