scoreboard players set hole13Hits golf.global 0
scoreboard players set hole13EndCounter golf.global 0
scoreboard players operation hole13Timer golf.global = maxTime golf.global
# Give player tag showing what hole they are on
tag @s add hole13Player
# Makes creavite players go to survival
function lt:game/minigolf/core/hole_start
# Summon the crab an tags it
execute at @e[tag=hole13Start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole13Start] run tag @e[tag=golfCrab,distance=..5] add hole13Crab
# Gives the player the putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_13/timer
scoreboard players add TotalHolesPlays golf.global 1
scoreboard players add Total13Plays golf.global 1
execute if entity @s[tag=color.blind] as @e[tag=hole13Blue] at @s run summon minecraft:text_display ~ ~2 ~ {text:'[{"translate":"color.minecraft.blue"}]',Tags:["hole13Text"],billboard:"center"}
execute if entity @s[tag=color.blind] as @e[tag=hole13Magenta] at @s run summon minecraft:text_display ~ ~2 ~ {text:'[{"translate":"color.minecraft.magenta"}]',Tags:["hole13Text"],billboard:"center"}
execute if entity @s[tag=color.blind] as @e[tag=hole13TextMarker] at @s run summon minecraft:text_display ~ ~2 ~ {text:'[{"translate":" "}]', Tags:["hole13TextChange","hole13Text"],billboard:"center"}