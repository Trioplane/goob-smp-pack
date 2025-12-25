execute store result storage goob:lodestone_waypoints edit.selected_icon.index int 1 run scoreboard players get @s goob.lodestone_waypoints.edit_icon
function goob:lodestone_waypoints/edit_waypoint/edit_icon/get_icon_from_index with storage goob:lodestone_waypoints edit.selected_icon
tag @s add goob.lodestone_waypoints.player.current
execute as @e[type=interaction, tag=goob.lodestone_waypoints.interaction] if score @s goob.id = @p[tag=goob.lodestone_waypoints.player.current] goob.lodestone_waypoints.targeted_waypoint run tag @s add goob.lodestone_waypoints.interaction.selected
execute as @n[type=interaction, tag=goob.lodestone_waypoints.interaction.selected] on passengers run waypoint modify @s color white
function goob:lodestone_waypoints/edit_waypoint/edit_icon/set_icon with storage goob:lodestone_waypoints edit.selected_icon.resource_location
scoreboard players reset @s goob.lodestone_waypoints.targeted_waypoint
scoreboard players reset @s goob.lodestone_waypoints.cancel_edit
scoreboard players reset @s goob.lodestone_waypoints.edit_icon
tellraw @s {text: "[goob.] Edited waypoint icon", color: "gray"}
tag @n[type=interaction, tag=goob.lodestone_waypoints.interaction.selected] remove goob.lodestone_waypoints.interaction.selected
tag @s remove goob.lodestone_waypoints.player.current
