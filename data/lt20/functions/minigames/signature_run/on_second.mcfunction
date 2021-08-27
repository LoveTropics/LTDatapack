# Counts game time down
execute if score SecsLeft SignatureGlobal matches 1.. run scoreboard players remove SecsLeft SignatureGlobal 1

# Calculates MinutesLeft and SecsMinusMins values every second
scoreboard players operation MinutesLeft SignatureGlobal = SecsLeft SignatureGlobal
scoreboard players operation MinutesLeft SignatureGlobal /= 60 SignatureMath

scoreboard players operation MinutesMultiplied SignatureMath = MinutesLeft SignatureGlobal
scoreboard players operation MinutesMultiplied SignatureMath *= 60 SignatureMath
scoreboard players operation SecsMinusMins SignatureGlobal = SecsLeft SignatureGlobal
scoreboard players operation SecsMinusMins SignatureGlobal -= MinutesMultiplied SignatureMath
# Ends game if score is too low
# execute if SecsLeft SignatureGlobal matches 1.. run function lt20:minigames/signature_run/end_game

# Updates scoreboard time display NEEDS MOD UPDATE BEFORE UNCOMMENTING
execute if score SecsMinusMins SignatureGlobal matches 10.. run team modify srTimeLeft suffix [{"translate":"\uE001"},{"translate":"\uE001"},{"score":{"name":"MinutesLeft","objective":"SignatureGlobal"},"color":"red"},{"text":":","color":"gray"},{"score":{"name":"SecsMinusMins","objective":"SignatureGlobal"},"color":"red"}]
execute if score SecsMinusMins SignatureGlobal matches ..9 run team modify srTimeLeft suffix [{"translate":"\uE001"},{"translate":"\uE001"},{"score":{"name":"MinutesLeft","objective":"SignatureGlobal"},"color":"red"},{"text":":","color":"gray"},{"text":"0","color":"red"},{"score":{"name":"SecsMinusMins","objective":"SignatureGlobal"},"color":"red"}]

# Resets counter score
scoreboard players set TickCount SignatureGlobal 0

execute if score SecsLeft SignatureGlobal matches 600 run function lt20:minigames/signature_run/events/spawn_random_event
execute if score SecsLeft SignatureGlobal matches 400 run function lt20:minigames/signature_run/events/spawn_random_event
execute if score SecsLeft SignatureGlobal matches 760 run function lt20:minigames/signature_run/forest/set_stage_1
execute if score SecsLeft SignatureGlobal matches 600 run function lt20:minigames/signature_run/forest/set_stage_2
execute if score SecsLeft SignatureGlobal matches 300 run function lt20:minigames/signature_run/forest/set_stage_3
execute if score SecsLeft SignatureGlobal matches 100 run function lt20:minigames/signature_run/forest/set_stage_4
execute if score SecsLeft SignatureGlobal matches 3 run tellraw @a {"text":"3..","color":"yellow"}
execute if score SecsLeft SignatureGlobal matches 2 run tellraw @a {"text":"2..","color":"red"}
execute if score SecsLeft SignatureGlobal matches 1 run tellraw @a {"text":"1..","color":"dark_red"}
execute if score SecsLeft SignatureGlobal matches 3 run execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 2 0.5
execute if score SecsLeft SignatureGlobal matches 2 run execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 2 0.5
execute if score SecsLeft SignatureGlobal matches 1 run execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 2 0.5
execute if score GameState SignatureGlobal matches 2 if score SecsLeft SignatureGlobal matches 0 run function lt20:minigames/signature_run/lost_game
execute if score TotalSigs SignatureGlobal matches 75.. run function lt20:minigames/signature_run/won_game
