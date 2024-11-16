# Send Message / Finsh Hole Stuff
$execute at @e[tag=hole$(ForcedAge)End,current_world=true] run summon firework_rocket ~ ~3 ~ {LifeTime:10,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{explosions:[{shape:small_ball,colors:[I;14602026]}]}}}}
$title @p[tag=hole$(ForcedAge)Player,current_world=true] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"$(ForcedAge)"}, {"score":{"name":"@e[tag=hole$(ForcedAge)Crab]","objective":"golf.hits"}}]}]
$execute as @p[tag=hole$(ForcedAge)Player,current_world=true] at @s run playsound minecraft:item.goat_horn.sound.0 voice @s

# Stores The Score
# # Stores The Current PLayer High Score
$execute as @p[tag=hole$(ForcedAge)Player,current_world=true] at @s store result score @s golf.data run data get gamedata lt:golf @s[type=player] hole$(ForcedAge)
$execute as @p[tag=hole$(ForcedAge)Player,current_world=true] if score @s golf.data > @e[tag=hole$(ForcedAge)Crab,limit=1] golf.hits run execute store result gamedata lt:golf @s[type=player] hole$(ForcedAge) int 1 run scoreboard players get @e[tag=hole$(ForcedAge)Crab,limit=1] golf.hits
# # Global High Score
$execute as @p[tag=hole$(ForcedAge)Player,current_world=true] at @s store result score @s golf.data run data get gamedata lt:golf highScores hole$(ForcedAge)
$execute as @p[tag=hole$(ForcedAge)Player,current_world=true] if score @s golf.data >= @e[tag=hole$(ForcedAge)Crab,limit=1] golf.hits as @e[tag=hole$(ForcedAge)Dummy,limit=1,current_world=true] run data modify entity @s name_suffix set value '[{"translate":"lt.golf.util","color":"green","with":[{"score":{"name":"@e[tag=hole$(ForcedAge)Crab]","objective":"golf.hits"}}]}]'
$execute as @p[tag=hole$(ForcedAge)Player,current_world=true] if score @s golf.data >= @e[tag=hole$(ForcedAge)Crab,limit=1] golf.hits run execute store result gamedata lt:golf highScores hole$(ForcedAge) int 1 run scoreboard players get @e[tag=hole$(ForcedAge)Crab,limit=1] golf.hits
$execute as @p[tag=hole$(ForcedAge)Player,current_world=true] if score @s golf.data >= @e[tag=hole$(ForcedAge)Crab,limit=1] golf.hits as @e[tag=hole$(ForcedAge)Dummy,limit=1,current_world=true] run function lt:utility/dummy_players/set_from_player with entity @p[tag=hole$(ForcedAge)Player,current_world=true]

# Kills the crab
$execute as @e[tag=hole$(ForcedAge)End,current_world=true] at @s run function lt:world_games/minigolf/core/utils/kill_crab {hole:$(ForcedAge)}


# Resets The Player
$execute as @p[tag=hole$(ForcedAge)Player,current_world=true] at @s run function lt:world_games/minigolf/core/utils/gamemode
$give @a[tag=hole$(ForcedAge)Player,tag=!hole$(ForcedAge)Played,current_world=true] ltextras:tropicoin 2
$execute as @a[current_world=true] run tag @s remove hole$(ForcedAge)Player


