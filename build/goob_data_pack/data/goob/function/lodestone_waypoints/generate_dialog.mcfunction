data modify storage goob:lodestone_waypoints edit.dialog set value {type: "minecraft:multi_action", title: "Editing Waypoint", body: [{type: "minecraft:plain_message", contents: {text: "Select an icon", color: "yellow"}}], pause: false, actions: [], columns: 4, exit_action: {label: "Cancel Edit", action: {type: "minecraft:run_command", command: "trigger goob.lodestone_waypoints.cancel_edit"}}}
data modify storage goob:lodestone_waypoints edit.icons set from storage goob:lodestone_waypoints icons
scoreboard players set .index goob.lodestone_waypoints.math 0
function goob:lodestone_waypoints/generate_dialog/append_icons
