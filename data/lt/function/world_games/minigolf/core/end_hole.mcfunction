# Send Message / Finsh Hole Stuff
$execute at @e[tag=hole$(ForcedAge)End,current_world=true] run summon firework_rocket ~ ~3 ~ {LifeTime:10,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{explosions:[{shape:small_ball,colors:[I;14602026]}]}}}}
$title @p[tag=hole$(ForcedAge)Player,current_world=true] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"$(ForcedAge)"}, {"score":{"name":"@e[tag=hole$(ForcedAge)Crab]","objective":"golf.hits"}}]}]
$execute as @p[tag=hole$(ForcedAge)Player,current_world=true] at @s run playsound minecraft:item.goat_horn.sound.0 voice @s

# Kills the crab
$execute as @e[tag=hole$(ForcedAge)End,current_world=true] at @s run function lt:world_games/minigolf/core/utils/kill_crab {hole:$(ForcedAge)}

# Resets The Player
$execute as @p[tag=hole$(ForcedAge)Player,current_world=true] at @s run function lt:world_games/minigolf/core/utils/gamemode
$give @a[tag=hole$(ForcedAge)Player,tag=!hole$(ForcedAge)Played,current_world=true] ltextras:tropicoin 2
$execute as @a[current_world=true] run tag @s remove hole$(ForcedAge)Player


