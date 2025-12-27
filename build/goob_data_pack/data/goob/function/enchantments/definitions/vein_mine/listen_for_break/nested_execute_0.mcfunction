tag @s remove goob.enchantments.definitions.vein_mine.break_detector
function goob:enchantments/definitions/vein_mine/propagate
schedule function goob:enchantments/definitions/vein_mine/propagate_loop 1 replace
execute as @a[distance=..20] if items entity @s weapon.mainhand *[enchantments~[{enchantments: "goob:enchantments/definitions/vein_mine", levels: 1}]] run item replace entity @s armor.body with minecraft:wolf_armor[minecraft:enchantments={"goob:enchantments/apply_exhaustion": 15}, minecraft:equippable={slot: "body", equip_sound: "intentionally_empty"}]
