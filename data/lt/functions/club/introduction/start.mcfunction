# Show titles
title @s times 1t 5s 5t
title @s title [{"text":"🔒 ","color":"red"},{"translate":"lt.club.title.welcome","color":"gray","bold":true,"obfuscated":true},{"text":" 🔒","color":"red"}]

# Set scores
scoreboard players set @s club.joinClock 100

# Teleport player
tp @s @e[tag=club.first_spawn,limit=1]

# Give effects
effect give @s blindness infinite 60 true