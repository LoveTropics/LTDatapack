# Function run check
#title @a actionbar "FUNCTION RUNNING"

# STATE 1 - Turtle mounting
#execute as @e[tag=turtle_race.one_way.entity.turtle,tag=!turtle_race.one_way.entity.turtle.has_rider] at @s if score state r.o.global matches 1 if entity @a[tag=game.party.turtle_race.one_way.player.competitor,distance=..0.05] run function lt:game/party/race_one_way/turtle/mount/set_true
#execute as @e[tag=turtle_race.one_way.entity.turtle,tag=turtle_race.one_way.entity.turtle.has_rider] at @s if score state r.o.global matches 1 unless entity @a[tag=game.party.turtle_race.one_way.player.competitor,distance=..0.05] run function lt:game/party/race_one_way/turtle/mount/set_false
#execute unless score turtles_with_riders r.o.global = SETATSTART.PLAYER_COUNT r.o.global if score state r.o.global matches 1 run title @a[tag=game.party.turtle_race.one_way.player] actionbar [{"score":{"name":"turtles_with_riders","objective":"r.o.global"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"SETATSTART.PLAYER_COUNT","objective":"r.o.global"},"color":"yellow"},{"text":" Have mounted their turtles.","color":"white"}]
execute if score state r.o.global matches 1 run title @a[tag=game.party.turtle_race.one_way.player] actionbar {"text": "Mount your turtles. The race will begin shortly!"}
execute if score state r.o.global matches 1 if score time_since_all_mounted r.o.global matches 1.. run scoreboard players remove time_since_all_mounted r.o.global 1
execute if score state r.o.global matches 1 if score time_since_all_mounted r.o.global matches 0 run function lt:game/party/race_one_way/countdown/fp_5

# STATE 2 - Countdown

# STATE 3 - Game in Progress

# Begin adding to timer
execute if score state r.o.global matches 3 run scoreboard players add ticks_since_start r.o.global 1

# I hate that I have to put this here but it updates the bossbar timers

scoreboard players operation MATH69 r.o.global = ticks_since_start r.o.global
scoreboard players operation MATH69 r.o.global %= 20 main.number
scoreboard players operation current_value r.o.time_mil = MATH69 r.o.global

scoreboard players operation MATH69 r.o.global = ticks_since_start r.o.global
scoreboard players operation MATH69 r.o.global /= 20 main.number
scoreboard players operation MATH69 r.o.global %= 60 main.number
scoreboard players operation current_value r.o.time_sec = MATH69 r.o.global

scoreboard players operation MATH69 r.o.global = ticks_since_start r.o.global
scoreboard players operation MATH69 r.o.global /= 20 main.number
scoreboard players operation MATH69 r.o.global /= 60 main.number
scoreboard players operation current_value r.o.time_min = MATH69 r.o.global

execute if score current_value r.o.time_mil matches 10.. if score current_value r.o.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.one_way.time_display name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.o.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.o.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"score":{"name":"current_value","objective":"r.o.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]
execute if score current_value r.o.time_mil matches ..9 if score current_value r.o.time_sec matches 10.. run bossbar set lt:game.party.turtle_race.one_way.time_display name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.o.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.o.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.o.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.o.time_mil matches 10.. if score current_value r.o.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.one_way.time_display name [{ "text": "| ", "color": "dark_gray" }, { "score": { "name": "current_value", "objective": "r.o.time_min" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "text": "0", "color": "yellow" }, { "score": { "name": "current_value", "objective": "r.o.time_sec" }, "color": "yellow" }, { "text": ":", "color": "gray" }, { "score": { "name": "current_value", "objective": "r.o.time_mil" }, "color": "yellow" }, { "text":" |","color":"dark_gray"}]
execute if score current_value r.o.time_mil matches ..9 if score current_value r.o.time_sec matches ..9 run bossbar set lt:game.party.turtle_race.one_way.time_display name [{"text":"| ","color":"dark_gray"},{"score":{"name":"current_value","objective":"r.o.time_min"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.o.time_sec"},"color":"yellow"},{"text":":","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"current_value","objective":"r.o.time_mil"},"color":"yellow"},{"text":" |","color":"dark_gray"}]


# Check passed checkpoint
execute as @a[tag=game.party.turtle_race.one_way.player.competitor] at @s if score state r.o.global matches 3 if block ~ 0 ~ ltextras:checkpoint run function lt:game/party/race_one_way/player/check_checkpoint

# Delay tp grrrrrrrrrrrrr
scoreboard players remove @a[scores={r.o.p_tp_delay=1..},tag=game.party.turtle_race.one_way.player.competitor.finished_race] r.o.p_tp_delay 1
execute as @a[tag=game.party.turtle_race.one_way.player.competitor.finished_race,scores={r.o.p_tp_delay=0}] at @s run function lt:game/party/race_one_way/player/delay_tp

# apply effects to players
effect give @a[tag=game.party.turtle_race.one_way.player.competitor] minecraft:water_breathing 360 80 true

# Make thing go down FUCK FUCK FUCK
execute if score state r.o.global matches 3 run scoreboard players remove @a[tag=game.party.turtle_race.one_way.player.competitor,tag=!game.party.turtle_race.one_way.player.competitor.finished_race,scores={r.o.p_boost_time=1..}] r.o.p_boost_time 1

# give back thing FUCK FUCK FUCK FUCK
execute as @a[tag=game.party.turtle_race.one_way.player.competitor,tag=!game.party.turtle_race.one_way.player.competitor.finished_race,scores={r.o.p_boost_time=0}] at @s run function lt:game/party/race_one_way/player/boost/give

execute if score state r.o.global matches 3 run scoreboard players remove @e[tag=turtle_race.one_way.entity.turtle,tag=turtle_race.one_way.entity.turtle.has_boost,scores={r.o.p_boost_time=1..}] r.o.p_boost_time 1

execute at @e[tag=turtle_race.one_way.entity.turtle.has_boost] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 1 normal

execute as @e[tag=turtle_race.one_way.entity.turtle,scores={r.o.p_boost_time=0}] at @s run function lt:game/party/race_one_way/turtle/boost/remove

execute as @e[type=item,nbt={Item:{tag:{RaceSpeedPowerup:1b}}}] at @s run function lt:game/party/race_one_way/player/boost/item_to_player
