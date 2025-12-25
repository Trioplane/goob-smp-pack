data modify storage goob:lodestone_waypoints edit.button set value {label: [{atlas: "gui", sprite: "goob:hud/locator_bar_dot/trplnr"}, {text: " "}, {text: "", color: "gray"}], width: 100, action: {type: "minecraft:run_command", command: ""}}
function goob:lodestone_waypoints/generate_dialog/append_icons/set_sprite with storage goob:lodestone_waypoints edit.icons[0]
data modify storage goob:lodestone_waypoints edit.button.label[2].text set from storage goob:lodestone_waypoints edit.icons[0].full
execute store result storage goob:lodestone_waypoints edit.index int 1 run scoreboard players get .index goob.lodestone_waypoints.math
function goob:lodestone_waypoints/generate_dialog/append_icons/set_trigger_command with storage goob:lodestone_waypoints edit
data modify storage goob:lodestone_waypoints edit.dialog.actions append from storage goob:lodestone_waypoints edit.button
scoreboard players add .index goob.lodestone_waypoints.math 1
data remove storage goob:lodestone_waypoints edit.icons[0]
execute if data storage goob:lodestone_waypoints edit.icons[0] run function goob:lodestone_waypoints/generate_dialog/append_icons
