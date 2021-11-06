# Reset checkpoint score
scoreboard players set @s r.s.p_checkpoint 0

# Add lap score
scoreboard players add @s r.s.p_lap 1

# Compute players score at time of crossing
scoreboard players operation @s r.s.ticks_check1 = ticks_since_start r.s.global
scoreboard players operation @s r.s.current_time = @s r.s.ticks_check1
execute as @s run function lt:game/party/race_standard/player/mark_checkpoint_time

# Display title
title @s times 5 60 5
title @s[scores={r.s.time_mil=10..,r.s.time_sec=10..}] title [{"text":"◁ ","color":"dark_gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"},{"text":" ▷","color":"dark_gray"}]
title @s[scores={r.s.time_mil=..9,r.s.time_sec=10..}] title [{"text":"◁ ","color":"dark_gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"},{"text":" ▷","color":"dark_gray"}]
title @s[scores={r.s.time_mil=10..,r.s.time_sec=..9}] title [{"text":"◁ ","color":"dark_gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"},{"text":" ▷","color":"dark_gray"}]
title @s[scores={r.s.time_mil=..9,r.s.time_sec=..9}] title [{"text":"◁ ","color":"dark_gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"},{"text":" ▷","color":"dark_gray"}]

title @s subtitle [{"text":"Lap ","color": "#77A12F","bold": true},{"text":"1","color":"yellow","bold":false},{"text":"/","color":"gray","bold":false},{"text":"2","color":"yellow","bold":false},{"text":" Complete!","color":"#77A12F","bold":true}]

# Announce completed lap
execute as @s[scores={r.s.time_mil=10..,r.s.time_sec=10..}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"selector":"@s","color":"white"},{"text":" completed their 1st lap","color":"#77A12F"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]
execute as @s[scores={r.s.time_mil=..9,r.s.time_sec=10..}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"selector":"@s","color":"white"},{"text":" completed their 1st lap","color":"#77A12F"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]
execute as @s[scores={r.s.time_mil=10..,r.s.time_sec=..9}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"selector":"@s","color":"white"},{"text":" completed their 1st lap","color":"#77A12F"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]
execute as @s[scores={r.s.time_mil=..9,r.s.time_sec=..9}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"selector":"@s","color":"white"},{"text":" completed their 1st lap","color":"#77A12F"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]


# playsound + particle
playsound minecraft:item.trident.thunder master @s ~ ~ ~ 2 2
execute as @s at @s anchored eyes run particle minecraft:totem_of_undying ^ ^ ^0.5 0.15 0.15 0.15 1.5 150

# Adjust bossbar
bossbar players remove lt:game.party.turtle_race.standard.lap_display.1st @p
bossbar players add lt:game.party.turtle_race.standard.lap_display.final @p
