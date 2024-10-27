execute as @s[tag=golfInGame] run tag @s add wasInGame
execute as @s[tag=!wasInGame] run tag @s add golfInGame
execute as @s[tag=wasInGame] run tag @s remove golfInGame
execute as @s[tag=wasInGame] run xp set @s 0 levels
execute as @s[tag=wasInGame] run clear @s #minecraft:hoes
tag @s remove wasInGame

execute as @s[tag=golfCreative] run tag @s add wasCreative
execute as @s[tag=golfCreative] run gamemode creative
execute as @s[tag=golfCreative] run tag @s remove golfCreative
execute as @s[tag=!wasCreative,gamemode=creative] run tag @s add golfCreative
execute as @s[tag=!wasCreative,gamemode=creative] run gamemode adventure
tag @s remove wasCreative