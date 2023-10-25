# Show titles
title @s times 1t 5s 5t
title @s title [{"text":"🔓 ","color":"gray"},{"text":"Welcome","color":"dark_purple","bold":true},{"text":" 🔓","color":"gray"}]
title @s subtitle [{"text":"To the Covert Club for Undercover Clubbers","color":"light_purple"}]

# Clear blindness
effect clear @s blindness

# Teleport through barriers and give slow falling
tp @s ~ ~-3 ~
effect give @s slow_falling 3 1 true
