execute if score RemainingTime Digsite matches 1.. run scoreboard players remove RemainingTime Digsite 1
execute if score RemainingTime Digsite matches 0 run function lt20:minigames/desert_dig/stop_digsite
execute if score RemainingTime Digsite matches 60 run title @a[tag=digsite_player] title {"text":"3..","color":"green","bold":true}
execute if score RemainingTime Digsite matches 40 run title @a[tag=digsite_player] title {"text":"2..","color":"yellow","bold":true}
execute if score RemainingTime Digsite matches 20 run title @a[tag=digsite_player] title {"text":"1..","color":"red","bold":true}

execute as @a[tag=digsite_player,nbt={Inventory:[{id:"minecraft:diamond"}]}] at @s run function lt20:minigames/desert_dig/count_diamond
execute as @a[tag=digsite_player,nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] at @s run function lt20:minigames/desert_dig/count_gold
execute as @a[tag=digsite_player,nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] at @s run function lt20:minigames/desert_dig/count_iron

execute as @a[tag=digsite_player,nbt={Inventory:[{id:"minecraft:player_head"}]}] at @s run function lt20:minigames/desert_dig/sand_drops/powerups/pickup_powerup

execute as @e[type=item,nbt={Item:{id:"tropicraft:volcanic_sand",Count:1b}}] at @s if entity @e[tag=digsite_corner,distance=..50] run function lt20:minigames/desert_dig/sand_drops/randomize_drop
execute at @e[tag=powerup] run function lt20:minigames/signature_run/effects/item_particle

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{powerupExcavate:1b}}}] at @s if entity @a[tag=digsite_player,distance=..0.5] run function lt20:minigames/desert_dig/sand_drops/powerups/powerup_clear_area

execute as @e[tag=explosive_silverfish,scores={digsiteSilver=150}] at @s run playsound minecraft:entity.creeper.primed master @a[distance=..15] ~ ~ ~ 2 1
scoreboard players remove @e[tag=explosive_silverfish] digsiteSilver 1
execute as @e[tag=explosive_silverfish,scores={digsiteSilver=0}] at @s run function lt20:minigames/desert_dig/sand_drops/explode_silverfish

execute as @a[tag=digsite_player,scores={digsiteHealth=..9}] at @s run function lt20:minigames/desert_dig/player_die
