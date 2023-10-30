execute as @e[tag=events.in_game.parrot_party.parrot_spawn] at @s run summon parrot ~ ~ ~ {NoAI:true,NoGravity:false,Tags:["events.in_game.parrot_party.parrot"]}
execute as @e[tag=events.in_game.parrot_party.jukebox] at @s run setblock ~ ~ ~ jukebox
execute as @e[tag=events.in_game.parrot_party.jukebox] at @s run setblock ~ ~1 ~ hopper{Items:[{Slot:0b,id:"tropicraft:music_disc_low_tide",Count:1b}]}
schedule function lt:events/in_game/parrot_party/set_air 10t
execute as @e[tag=events.in_game.parrot_party.tracker] at @s run tellraw @a[distance=..25] {"translate":"lt.events.parrot_party.started"}
scoreboard players set Cooldown events.parrot_party 1
scoreboard players add ParrotParty main.stats 1
schedule function lt:events/in_game/parrot_party/end_party 348s