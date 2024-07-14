# Updates forced progression display bossbar
scoreboard players operation s.time_to_fp utility.math5 = time_to_forced_progression s.global
scoreboard players operation s.time_to_fp utility.math5 /= 20 main.number
execute unless score forced_progression_active_to s.global = SETTING.TOTAL_FLOORS s.global run bossbar set lt:game.party.spleef.forced_progression_bar name [{"text":"Forced Progression in: ","color":"#ACC12F","bold":true},{"score":{"name":"s.time_to_fp","objective":"utility.math5"},"color":"white","bold":false}]
execute if score forced_progression_active_to s.global = SETTING.TOTAL_FLOORS s.global run bossbar set lt:game.party.spleef.forced_progression_bar name [{"text":"☠ Forced Progression Complete! ☠","color":"#ACC12F","bold":true}]

# Play sound for forced progression countdown
execute if score time_to_forced_progression s.global matches 201 as @a[tag=game.party.spleef.player] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 0.25
execute if score time_to_forced_progression s.global matches 201 as @a[tag=game.party.spleef.player] at @s run tellraw @s [{"text":">>> ","color":"gray"},{"text":"Spleef ❯ Next layer crumble in ","color":"yellow"},{"text":"10","color":"#77A12F"}]
execute if score time_to_forced_progression s.global matches 101 as @a[tag=game.party.spleef.player] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 0.5
execute if score time_to_forced_progression s.global matches 101 as @a[tag=game.party.spleef.player] at @s run tellraw @s [{"text":">>> ","color":"gray"},{"text":"5","color":"#77A12F"}]
execute if score time_to_forced_progression s.global matches 81 as @a[tag=game.party.spleef.player] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 0.75
execute if score time_to_forced_progression s.global matches 81 as @a[tag=game.party.spleef.player] at @s run tellraw @s [{"text":">>> ","color":"gray"},{"text":"4","color":"#77A12F"}]
execute if score time_to_forced_progression s.global matches 61 as @a[tag=game.party.spleef.player] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 1
execute if score time_to_forced_progression s.global matches 61 as @a[tag=game.party.spleef.player] at @s run tellraw @s [{"text":">>> ","color":"gray"},{"text":"3","color":"#77A12F"}]
execute if score time_to_forced_progression s.global matches 41 as @a[tag=game.party.spleef.player] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 1.25
execute if score time_to_forced_progression s.global matches 41 as @a[tag=game.party.spleef.player] at @s run tellraw @s [{"text":">>> ","color":"gray"},{"text":"2","color":"#77A12F"}]
execute if score time_to_forced_progression s.global matches 21 as @a[tag=game.party.spleef.player] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 1.5
execute if score time_to_forced_progression s.global matches 21 as @a[tag=game.party.spleef.player] at @s run tellraw @s [{"text":">>> ","color":"gray"},{"text":"1","color":"#77A12F"}]

# Runs forced progression system
execute if score time_to_forced_progression s.global matches 1.. run scoreboard players remove time_to_forced_progression s.global 1
execute if score time_to_forced_progression s.global matches 0 run function lt:game/party/spleef/version/standard/forced_progression/update

execute if score forced_progression_active_to s.global matches 1.. as @a[tag=game.party.spleef.player.competitor] at @s if score @s s.player_floor <= forced_progression_active_to s.global run function lt:game/party/spleef/version/standard/forced_progression/find_block
scoreboard players add @e[tag=game.party.spleef.block_crumbler] s.crumble_time 1
execute as @e[tag=game.party.spleef.block_crumbler] at @s if score @s s.crumble_time matches 6 run function lt:game/party/spleef/version/standard/forced_progression/destroy_block
