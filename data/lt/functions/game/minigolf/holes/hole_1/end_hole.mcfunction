kill @e[tag=golf_crab,tag=hole_1]
scoreboard players add hole1time golfGlobal 1
playsound minecraft:block.note_block.bell voice @a[tag=hole_1_player]
execute as @a[tag=hole_1_player] run kill @e[type=minecraft:experience_orb,distance=..10]
execute as @a[tag=hole_1_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_1_player] run function lt:game/minigolf/core/gamemode_end
title @a[tag=hole_1_player] actionbar [{"text":"You have completed the hole #1 of Crab Golf ","color":"red"},{"score":{"name":"hole1hits","objective":"golfGlobal"},"color":"green"},{"text":" hits!","color":"red"}]]
execute unless score hole1hits golfGlobal >= @p[tag=hole_1_player] golf_hole_1_scores run scoreboard players operation @a[tag=hole_1_player] golf_hole_1_scores = hole1hits golfGlobal
execute as @a[tag=hole_1_player] run tag @s remove hole_1_player
execute at @e[tag=hole_1_end] run summon firework_rocket ~ ~3 ~ {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;672767],FadeColors:[I;3197183]},{Type:2,Colors:[I;370704],FadeColors:[I;7077749]}]}}}}