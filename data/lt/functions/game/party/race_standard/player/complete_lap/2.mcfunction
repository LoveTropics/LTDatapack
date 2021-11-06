# Reset checkpoint score
scoreboard players set @s r.s.p_checkpoint 0

# Add lap score
scoreboard players add @s r.s.p_lap 1

# Compute players score at time of crossing
scoreboard players operation @s r.s.ticks_check2 = ticks_since_start r.s.global
scoreboard players operation @s r.s.ticks_check2 -= @s r.s.ticks_check1
scoreboard players operation @s r.s.current_time = @s r.s.ticks_check2
execute as @s run function lt:game/party/race_standard/player/mark_checkpoint_time

# Stop turtle
data merge entity @e[tag=turtle_race.standard.entity.turtle,limit=1,sort=nearest,distance=..0.1] {Tags:["turtle_race.standard.entity.turtle","turtle_race.standard.entity.turtle.finished_race"],Attributes:[{Base:0.0,Name:"minecraft:generic.movement_speed"}]}

# Display title
title @s times 5 150 5
title @s[scores={r.s.time_mil=10..,r.s.time_sec=10..}] title [{"text":"◁ ","color":"dark_gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"},{"text":" ▷","color":"dark_gray"}]
title @s[scores={r.s.time_mil=..9,r.s.time_sec=10..}] title [{"text":"◁ ","color":"dark_gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"},{"text":" ▷","color":"dark_gray"}]
title @s[scores={r.s.time_mil=10..,r.s.time_sec=..9}] title [{"text":"◁ ","color":"dark_gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"},{"text":" ▷","color":"dark_gray"}]
title @s[scores={r.s.time_mil=..9,r.s.time_sec=..9}] title [{"text":"◁ ","color":"dark_gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"},{"text":" ▷","color":"dark_gray"}]

title @s subtitle {"text":"Race Completed!","color": "#77A12F","bold": true}

# Announce completed lap
execute as @s[scores={r.s.time_mil=10..,r.s.time_sec=10..}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"selector":"@s","color":"white"},{"text":" just finished the race!","color":"#77A12F"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]
execute as @s[scores={r.s.time_mil=..9,r.s.time_sec=10..}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"selector":"@s","color":"white"},{"text":" just finished the race!","color":"#77A12F"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]
execute as @s[scores={r.s.time_mil=10..,r.s.time_sec=..9}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"selector":"@s","color":"white"},{"text":" just finished the race!","color":"#77A12F"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]
execute as @s[scores={r.s.time_mil=..9,r.s.time_sec=..9}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"selector":"@s","color":"white"},{"text":" just finished the race!","color":"#77A12F"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]


# playsound + particle
playsound minecraft:item.trident.thunder master @s ~ ~ ~ 2 2
execute as @s at @s anchored eyes run particle minecraft:totem_of_undying ^ ^ ^0.5 0.15 0.15 0.15 1.5 150

# Adjust players win position score
scoreboard players add finishers r.s.global 1
scoreboard players operation @s r.s.p_placement = finishers r.s.global

# Announce win position
execute as @s[scores={r.s.p_placement=1}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"text":"They crossed the finish line in ","color": "#77A12F"},{"text":"1st ","color":"yellow"},{"text":"place!","color": "#77A12F"}]
execute as @s[scores={r.s.p_placement=2}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"text":"They crossed the finish line in ","color": "#77A12F"},{"text":"2nd ","color":"yellow"},{"text":"place!","color": "#77A12F"}]
execute as @s[scores={r.s.p_placement=3}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"text":"They crossed the finish line in ","color": "#77A12F"},{"text":"3rd ","color":"yellow"},{"text":"place!","color": "#77A12F"}]
execute as @s[scores={r.s.p_placement=4..}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"text":"They completed the race in position: ","color": "#77A12F"},{"score": {"name": "@s","objective": "r.s.p_placement"},"color": "gray"}]

# Adjust time scores (UGHHHH)
scoreboard players operation @s r.s.current_time = ticks_since_start r.s.global
execute as @s run function lt:game/party/race_standard/player/mark_checkpoint_time

# Announce final total-track-time
execute as @s[scores={r.s.time_mil=10..,r.s.time_sec=10..}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"text":"Their cumulative final time was ","color":"#77A12F"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]
execute as @s[scores={r.s.time_mil=..9,r.s.time_sec=10..}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"text":"Their cumulative final time was ","color":"#77A12F"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]
execute as @s[scores={r.s.time_mil=10..,r.s.time_sec=..9}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"text":"Their cumulative final time was ","color":"#77A12F"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]
execute as @s[scores={r.s.time_mil=..9,r.s.time_sec=..9}] run tellraw @a[tag=game.party.turtle_race.standard.player] [{"text":"| ","color":"dark_gray"},{"text":"Their cumulative final time was ","color":"#77A12F"},{"score":{"name":"@s","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"@s","objective":"r.s.time_mil"},"color":"yellow"}]

tag @s add game.party.turtle_race.standard.player.competitor.finished_race
scoreboard players set @s r.s.p_tp_delay 100



# Adjust bossbar
bossbar players remove lt:game.party.turtle_race.standard.lap_display.final @p

# MAKE DA GAME START ENDING IF THIS ITHE THIRD PLAYER TO CROS STHE LINE
# THIS IS BAD DO NOT LEAVE THIS FOR NEXT YEAR YOU IDIOT ... I.e. this system for checking when the game ends doesn't work if there are less than 3 people joined to the game. FIX THIS FOR NEXT YEAR 2 ELECTRIC BOOGALOO
execute if entity @s[tag=game.party.turtle_race.standard.player.competitor.finished_race,scores={r.s.p_placement=3}] run function lt:game/party/race_standard/player/start_final_stretch

clear @s
scoreboard players reset @s r.s.p_boost_time

# Adjust bossbar
bossbar players remove lt:game.party.turtle_race.standard.lap_display.final @p
execute if score @s r.s.p_placement matches 1 run bossbar players add lt:game.party.turtle_race.standard.win_position_display.1st @p
execute if score @s r.s.p_placement matches 2 run bossbar players add lt:game.party.turtle_race.standard.win_position_display.2nd @p
execute if score @s r.s.p_placement matches 3 run bossbar players add lt:game.party.turtle_race.standard.win_position_display.3rd @p
execute if score @s r.s.p_placement matches 4.. run bossbar players add lt:game.party.turtle_race.standard.win_position_display.finished @p
