execute if block ~ ~ ~ minecraft:lodestone align xyz positioned ~0.5 ~0.5 ~0.5 run return run function goob:lodestone_waypoints/make_waypoint
execute if score @s goob.lodestone_waypoints.raycast_steps matches 50.. run return run tellraw @s {text: "Couldn't find a lodestone mate.", color: "red"}
scoreboard players add @s goob.lodestone_waypoints.raycast_steps 1
execute positioned ^ ^ ^0.2 run function goob:lodestone_waypoints/find_lodestone
