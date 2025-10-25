$execute as @e[tag=wheel_$(current_number_last)] at @s run fill ~-2 ~2 ~-2 ~2 ~2 ~2 ltextras:edgeless_white_stained_glass replace ltextras:edgeless_red_stained_glass
$execute as @e[tag=wheel_$(current_number)] at @s run fill ~-2 ~2 ~-2 ~2 ~2 ~2 ltextras:edgeless_red_stained_glass replace ltextras:edgeless_white_stained_glass
execute if score current_number wheel.data matches 1..8 run scoreboard players add current_number wheel.data 1
execute if score current_number wheel.data matches 9 run scoreboard players set current_number wheel.data 1
execute if score current_number_last wheel.data matches 1..8 run scoreboard players add current_number_last wheel.data 1
execute if score current_number_last wheel.data matches 9 run scoreboard players set current_number_last wheel.data 1
execute store result gamedata lt:data wheel current_number int 1 run scoreboard players get current_number wheel.data
execute store result gamedata lt:data wheel current_number_last int 1 run scoreboard players get current_number_last wheel.data
scoreboard players remove random_number wheel.data 1
execute store result gamedata lt:data wheel random_number int 1 run scoreboard players get random_number wheel.data
execute at @e[tag=wheel,limit=1] as @a[distance=..64] at @s run playsound minecraft:block.note_block.banjo
