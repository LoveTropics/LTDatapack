# Announce that forced progression for stage has occured
tellraw @a[tag=game.party.spleef.player] [{"text":">>> ","color":"gray"},{"text":"Spleef ❯ The second level of the volcano has become unstable. It will now crumble below your feet!","color":"yellow"}]

# Playsound
execute as @a[tag=game.party.spleef.player] at @s run playsound block.chain.break master @s

# Set scores
scoreboard players add forced_progression_active_to s.global 1

# Activate next stage of forced progression
scoreboard players operation time_to_forced_progression s.global = SETTING.FLOOR3_TIME_TO_FP s.global
scoreboard players operation s.time_to_fp utility.math5 = time_to_forced_progression s.global
scoreboard players operation s.time_to_fp utility.math5 /= 20 main.number
bossbar set lt:game.party.spleef.forced_progression_bar name [{"text":"Forced Progression in: ","color":"#ACC12F","bold":true},{"score":{"name":"s.time_to_fp","objective":"utility.math5"},"color":"white","bold":false}]
