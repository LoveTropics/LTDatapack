# Show titles
title @s times 5t 4s 5t
title @s title [{"text":"Welcome Back!","color":"dark_purple","bold":true}]
title @s subtitle [{"text":"To the Covert Club for Undercover Clubbers","color":"light_purple"}]

# Teleport player
tp @s 1169 229 2744

# Give effects
effect give @s nausea 5 3 true

# Play sound
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 2