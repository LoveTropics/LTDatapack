execute in tropicraft:tropics run tp @s 1169.50 170.00 -1240.50 0 0
execute in tropicraft:tropics run spawnpoint @s 1169.50 170.00 -1240.50

# Add every tag applied at first join
tag @s add utility.player.joined

# Setup player for dialogue system
execute as @s at @s run function lt:quest/utility/setup_player

execute as @s at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.20 1.5

# Join Messages:
title @s times 15 135 15
title @s title {"translate":"lt.utility.first_join.title","color":"#ff9900"}
title @s subtitle [{"translate":"lt.utility.first_join.subtitle.1","color":"#4eb61d"},{"text":" ❤ ","color":"red"},{"translate":"lt.info.wea.1","color":"#21b8cf"}]
execute as @s at @s positioned 213.38 177.00 243.35 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"      "},{"text":"","color":"#00718E"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"      "},{"translate":"lt.utility.first_join.message.1","color":"#ff9900"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"            "},{"translate":"lt.utility.first_join.title","color":"#4eb61d"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"               "},{"text":"            ❤ ","color":"red"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"          "},{"translate":"lt.info.wea.1","color":"#21b8cf"}]
tellraw @s [{"text":"| ","color":"dark_gray"}]

collectible give @s lt:utility/tropical_map
give @s ltextras:tropicoin 10
