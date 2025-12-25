scoreboard players operation @s goob.lodestone_waypoints.targeted_waypoint = @n[type=interaction, tag=goob.lodestone_waypoints.interaction.current] goob.id
scoreboard players enable @s goob.lodestone_waypoints.cancel_edit
scoreboard players enable @s goob.lodestone_waypoints.edit_icon
scoreboard players set @s goob.lodestone_waypoints.edit_icon -1
tellraw @s {text: "[goob.] Editing waypoint", color: "gray"}
function goob:lodestone_waypoints/show_dialog with storage goob:lodestone_waypoints edit
data remove entity @n[type=interaction, tag=goob.lodestone_waypoints.interaction.current] interaction
