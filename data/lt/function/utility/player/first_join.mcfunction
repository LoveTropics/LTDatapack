execute in tropicraft:tropics run tp @s 1169 170 -1240 0 0
execute in tropicraft:tropics run spawnpoint @s 1169 170 -1240
# Set There WayPoint
function lt:utility/waypoint

# Add every tag applied at first join
tag @s add utility.player.joined

execute as @s at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.20 1.5

# Join Messages:
title @s times 15 135 15
title @s title {"translate":"lt.utility.first_join.title","color":"#ff9900"}
title @s subtitle [{"translate":"lt.utility.first_join.subtitle.1","color":"#4eb61d"},{"text":" ❤ ","color":"red"},{"translate":"lt.charity.name_2","color":"#21b8cf"}]
execute as @s at @s positioned ~ ~ ~ run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"      "},{"text":"","color":"#00718E"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"      "},{"translate":"lt.utility.first_join.message.1","color":"#ff9900"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"            "},{"translate":"lt.utility.first_join.title","color":"#4eb61d"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"               "},{"text":"            ❤ ","color":"red"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"          "},{"translate":"lt.charity.name_2","color":"#21b8cf"}]
tellraw @s [{"text":"| ","color":"dark_gray"}]

collectible give @s lt:utility/tropical_map
give @s ltextras:tropicoin 10
