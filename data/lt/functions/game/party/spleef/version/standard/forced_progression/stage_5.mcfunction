# Announce that forced progression for stage has occured
tellraw @a[tag=game.party.spleef.player] [{"text":">>> ","color":"gray"},{"text":"Spleef ❯ The fifth level of the volcano has become unstable. It will now crumble below your feet!","color":"yellow"}]

# Playsound
execute as @a[tag=game.party.spleef.player] at @s run playsound block.chain.break master @s

# Set scores
scoreboard players add forced_progression_active_to s.global 1

# Activate next stage of forced progression
