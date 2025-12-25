execute as @e[type=interaction, tag=goob.lodestone_waypoints.interaction] at @s run function goob:lodestone_waypoints/loop/nested_execute_0
execute as @a if score @s goob.lodestone_waypoints.targeted_waypoint matches 0.. run function goob:lodestone_waypoints/edit_waypoint
schedule function goob:lodestone_waypoints/loop 4 replace
