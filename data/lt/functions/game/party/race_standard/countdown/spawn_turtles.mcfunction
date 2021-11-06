# Spawn turtles
execute as @e[tag=turtle_race.standard.marker.player_spawn,tag=turtle_race.standard.marker.has_player] at @s positioned as @e[tag=turtle_race.standard.marker.turtle_spawn,sort=nearest,limit=1,distance=..4] run summon tropicraft:turtle ~ ~0.1 ~ {Tags:["turtle_race.standard.entity.turtle"],Invulnerable:1b,NoAI:1b,Attributes:[{Base:1.65,Name:"minecraft:generic.movement_speed"}],NoBrakesOnThisTrain:1b}

# Player Alert Sound
execute as @a[tag=game.party.turtle_race.standard.player] at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 2 1

# Alert Players
title @a[tag=game.party.turtle_race.standard.player] times 5 60 5
title @a[tag=game.party.turtle_race.standard.player] title ""
title @a[tag=game.party.turtle_race.standard.player] subtitle [{"text":"Ξ ","color": "gray","obfuscated": true},{"text":"Mount your Turtle","color": "green","obfuscated": false},{"text":" Ξ","color": "gray","obfuscated": true}]
