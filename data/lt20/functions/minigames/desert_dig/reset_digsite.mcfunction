execute as @e[tag=digsite_structure_corner] at @s run function lt20:minigames/desert_dig/utilities/rng_12

scoreboard players reset * digsitescore
scoreboard players reset * Digsite


execute as @e[tag=digsite_corner] at @s run fill ~1 ~-1 ~1 ~25 ~-6 ~25 air replace
execute as @e[tag=digsite_structure_corner] at @s run kill @e[type=item,distance=..12]

execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 1 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/cobblestone_ruin_1",sizeY:6,sizeZ:7}
execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 2 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/cobblestone_ruin_2",sizeY:6,sizeZ:7}
execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 3 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/cobblestone_ruin_3",sizeY:6,sizeZ:7}
execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 4 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/cobblestone_ruin_4",sizeY:6,sizeZ:7}
execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 5 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/cobblestone_ruin_5",sizeY:6,sizeZ:7}
execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 6 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/cobblestone_ruin_6",sizeY:6,sizeZ:7}

execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 7 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/sandstone_ruin_1",sizeY:6,sizeZ:7}
execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 8 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/sandstone_ruin_2",sizeY:6,sizeZ:7}
execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 9 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/sandstone_ruin_3",sizeY:6,sizeZ:7}
execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 10 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/sandstone_ruin_4",sizeY:6,sizeZ:7}
execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 11 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/sandstone_ruin_5",sizeY:6,sizeZ:7}
execute as @e[tag=digsite_structure_corner] at @s if score @s rngDD matches 12 run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:0,name:"lt20:ruins/sandstone_ruin_6",sizeY:6,sizeZ:7}

execute as @e[tag=digsite_structure_corner] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[tag=digsite_structure_corner] at @s run fill ~ ~ ~ ~ ~1 ~ air

execute as @e[tag=digsite_structure_corner] at @s run fill ~ ~ ~ ~26 ~-6 ~26 minecraft:chest{LootTable:"lt20:chests/common_chest"} replace minecraft:lime_wool
execute as @e[tag=digsite_structure_corner] at @s run fill ~ ~ ~ ~26 ~-6 ~26 minecraft:chest{LootTable:"lt20:chests/uncommon_chest"} replace minecraft:orange_wool
execute as @e[tag=digsite_structure_corner] at @s run fill ~ ~ ~ ~26 ~-6 ~26 minecraft:chest{LootTable:"lt20:chests/rare_chest"} replace minecraft:red_wool

execute as @e[tag=digsite_structure_corner] at @s run fill ~ ~ ~ ~26 ~-7 ~26 minecraft:gravel replace minecraft:red_concrete
execute as @e[tag=digsite_corner] at @s run fill ~1 ~-1 ~1 ~25 ~-6 ~25 tropicraft:volcanic_sand keep
tellraw @s [{"text":"[Digsite]: ","color":"blue"},{"text":"Digsite Reset. Please note this is not necessary after every round, it is only included to fix any potential errors if they occur","color":"yellow"}]

scoreboard players reset * rngDD
