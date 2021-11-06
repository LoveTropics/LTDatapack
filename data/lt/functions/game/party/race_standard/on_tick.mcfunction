# Function run check
#title @a actionbar "FUNCTION RUNNING"

# STATE 1 - Turtle mounting
#execute as @e[tag=turtle_race.standard.entity.turtle,tag=!turtle_race.standard.entity.turtle.has_rider] at @s if score state r.s.global matches 1 if entity @a[tag=game.party.turtle_race.standard.player.competitor,distance=..0.05] run function lt:game/party/race_standard/turtle/mount/set_true
#execute as @e[tag=turtle_race.standard.entity.turtle,tag=turtle_race.standard.entity.turtle.has_rider] at @s if score state r.s.global matches 1 unless entity @a[tag=game.party.turtle_race.standard.player.competitor,distance=..0.05] run function lt:game/party/race_standard/turtle/mount/set_false
#execute unless score turtles_with_riders r.s.global = SETATSTART.PLAYER_COUNT r.s.global if score state r.s.global matches 1 run title @a[tag=game.party.turtle_race.standard.player] actionbar [{"score":{"name":"turtles_with_riders","objective":"r.s.global"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"SETATSTART.PLAYER_COUNT","objective":"r.s.global"},"color":"yellow"},{"text":" Have mounted their turtles.","color":"white"}]
execute if score state r.s.global matches 1 run title @a[tag=game.party.turtle_race.standard.player] actionbar {"text": "Mount your turtles. The race will begin shortly!"}
execute if score state r.s.global matches 1 if score time_since_all_mounted r.s.global matches 1.. run scoreboard players remove time_since_all_mounted r.s.global 1
execute if score state r.s.global matches 1 if score time_since_all_mounted r.s.global matches 0 run function lt:game/party/race_standard/countdown/fp_5

# STATE 2 - Countdown

# STATE 3 - Game in Progress

# Begin adding to timer
execute if score state r.s.global matches 3 run scoreboard players add ticks_since_start r.s.global 1

# I hate that I have to put this here but it updates the bossbar timers

scoreboard players operation MATH69 r.s.global = ticks_since_start r.s.global
scoreboard players operation MATH69 r.s.global %= 20 main.number
scoreboard players operation current_value r.s.time_mil = MATH69 r.s.global

scoreboard players operation MATH69 r.s.global = ticks_since_start r.s.global
scoreboard players operation MATH69 r.s.global /= 20 main.number
scoreboard players operation MATH69 r.s.global %= 60 main.number
scoreboard players operation current_value r.s.time_sec = MATH69 r.s.global

scoreboard players operation MATH69 r.s.global = ticks_since_start r.s.global
scoreboard players operation MATH69 r.s.global /= 20 main.number
scoreboard players operation MATH69 r.s.global /= 60 main.number
scoreboard players operation current_value r.s.time_min = MATH69 r.s.global

execute if score current_value r.s.time_mil matches 10.. if score current_value r.s.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.standard.lap_display.1st name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.s.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches ..9 if score current_value r.s.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.standard.lap_display.1st name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.s.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.s.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.s.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches 10.. if score current_value r.s.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.standard.lap_display.1st name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.s.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.s.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.s.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches ..9 if score current_value r.s.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.standard.lap_display.1st name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.s.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]

execute if score current_value r.s.time_mil matches 10.. if score current_value r.s.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.standard.lap_display.2nd name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.s.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches ..9 if score current_value r.s.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.standard.lap_display.2nd name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.s.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.s.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.s.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches 10.. if score current_value r.s.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.standard.lap_display.2nd name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.s.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.s.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.s.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches ..9 if score current_value r.s.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.standard.lap_display.2nd name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.s.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]

execute if score current_value r.s.time_mil matches 10.. if score current_value r.s.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.standard.lap_display.3rd name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.s.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches ..9 if score current_value r.s.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.standard.lap_display.3rd name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.s.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.s.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.s.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches 10.. if score current_value r.s.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.standard.lap_display.3rd name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.s.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.s.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.s.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches ..9 if score current_value r.s.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.standard.lap_display.3rd name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.s.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]

execute if score current_value r.s.time_mil matches 10.. if score current_value r.s.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.standard.lap_display.final name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.s.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches ..9 if score current_value r.s.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.standard.lap_display.final name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.s.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.s.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.s.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches 10.. if score current_value r.s.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.standard.lap_display.final name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.s.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.s.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.s.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches ..9 if score current_value r.s.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.standard.lap_display.final name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.s.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]

execute if score current_value r.s.time_mil matches 10.. if score current_value r.s.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.standard.time_display name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.s.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches ..9 if score current_value r.s.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.standard.time_display name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.s.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.s.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.s.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches 10.. if score current_value r.s.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.standard.time_display name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.s.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.s.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.s.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.s.time_mil matches ..9 if score current_value r.s.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.standard.time_display name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.s.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.s.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.s.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]


# Check passed checkpoint
execute as @a[tag=game.party.turtle_race.standard.player.competitor] at @s if score state r.s.global matches 3 if block ~ 0 ~ ltextras:checkpoint run function lt:game/party/race_standard/player/check_checkpoint

# Delay tp grrrrrrrrrrrrr
scoreboard players remove @a[scores={r.s.p_tp_delay=1..},tag=game.party.turtle_race.standard.player.competitor.finished_race] r.s.p_tp_delay 1
execute as @a[tag=game.party.turtle_race.standard.player.competitor.finished_race,scores={r.s.p_tp_delay=0}] at @s run function lt:game/party/race_standard/player/delay_tp

# apply effects to players
effect give @a[tag=game.party.turtle_race.standard.player.competitor] minecraft:water_breathing 360 80 true

# Make thing go down FUCK FUCK FUCK
execute if score state r.s.global matches 3 run scoreboard players remove @a[tag=game.party.turtle_race.standard.player.competitor,tag=!game.party.turtle_race.standard.player.competitor.finished_race,scores={r.s.p_boost_time=1..}] r.s.p_boost_time 1

# give back thing FUCK FUCK FUCK FUCK
execute as @a[tag=game.party.turtle_race.standard.player.competitor,tag=!game.party.turtle_race.standard.player.competitor.finished_race,scores={r.s.p_boost_time=0}] at @s run function lt:game/party/race_standard/player/boost/give

execute if score state r.s.global matches 3 run scoreboard players remove @e[tag=turtle_race.standard.entity.turtle,tag=turtle_race.standard.entity.turtle.has_boost,scores={r.s.p_boost_time=1..}] r.s.p_boost_time 1

execute at @e[tag=turtle_race.standard.entity.turtle.has_boost] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 1 normal

execute as @e[tag=turtle_race.standard.entity.turtle,scores={r.s.p_boost_time=0}] at @s run function lt:game/party/race_standard/turtle/boost/remove

execute as @e[type=item,nbt={Item:{tag:{RaceSpeedPowerup:1b}}}] at @s run function lt:game/party/race_standard/player/boost/item_to_player
