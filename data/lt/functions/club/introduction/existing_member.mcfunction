# Show titles
title @s times 5t 4s 5t
title @s title [{"translate":"lt.club.title.returning","color":"dark_purple","bold":true}]
title @s subtitle [{"translate":"lt.club.subtitle.welcome","color":"light_purple"}]

# Teleport player
tp @s @e[tag=club.normal_spawn,limit=1]

# Give effects
effect give @s nausea 5 3 true

# Play sound
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 2