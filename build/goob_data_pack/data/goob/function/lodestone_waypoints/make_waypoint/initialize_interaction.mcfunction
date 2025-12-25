function goob:main/assign_id
execute on passengers run scoreboard players operation @s goob.id = @n[type=interaction, tag=goob.lodestone_waypoints.interaction.new] goob.id
particle glow ~ ~ ~ 0.3 0.3 0.3 0.05 10
tag @s remove goob.lodestone_waypoints.interaction.new
