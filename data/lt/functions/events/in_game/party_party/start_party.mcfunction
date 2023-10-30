execute as @e[tag=events.in_game.parrot_party.parrot_spawn] at @s run summon parrot ~ ~ ~ {NoAI:true,Tags:["events.in_game.parrot_party.parrot"]}
execute as @e[tag=events.in_game.parrot_party.jukebox] at @s run setblock ~ ~ ~ jukebox{RecordItem:{id:"tropicraft:music_disc_low_tide"},IsPlaying:1b}
tellraw @a[distance=..25] {"translate":"lt.events.parrot_party.started"}
scoreboard players set Cooldown events.parrot_party 1
scoreboard players add ParrotParty main.stats 1
schedule function lt:events/in_gane/parrot_party/end_party 348s