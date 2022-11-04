tag @s add utility.player.joined
execute in overworld run tp @s 1357 65 915 90 0
execute in overworld run spawnpoint @s 1357 65 915
title @s times 15 135 15
title @s title {"text":"Welcome to Love Tropics '22!","color":"yellow"}
title @s subtitle [{"text":"Love Tropics","color":"#5ebfa1"},{"text":" ❤ ","color":"red"},{"text":"Project Seagrass","color":"#8ad555"}]
execute as @s at @s positioned 213.38 177.00 243.35 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"        "},{"text":"","color":"#00718E"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"        "},{"text":"Welcome to the Love Tropics Server!","color":"yellow"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"          "},{"text":"Love Tropics","color":"#5ebfa1"},{"text":" ❤ ","color":"red"},{"text":"Project Seagrass","color":"#8ad555"}]
tellraw @s [{"text":"| ","color":"dark_gray"}]
