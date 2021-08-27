### 'Theme BuildGlobal' - Theme Key
# 1 = Sand Castle id = 'sand_castle'
# 2 = Under Da Sea = 'under_da_sea'
# 3 = Dire 9x9 = '9x9'
# 4 = Tree House = 'tree_house'
# 5 = ??? = ''
# 6 = My Little Tiki Bar = 'tiki_bar'
# 7 = Submarine = 'submarine'
# 8 =
###

# Loads plots with theme templates if necessary
execute as @e[tag=build_competition_structure_marker] at @s if score Theme BuildGlobal matches 1 run fill -1299 69 1892 -1149 69 1964 sand replace minecraft:light_blue_terracotta

execute as @e[tag=build_competition_structure_marker] at @s if score Theme BuildGlobal matches 2 run fill -1299 69 1892 -1149 69 1964 tropicraft:purified_sand replace minecraft:light_blue_terracotta

execute as @e[tag=build_competition_structure_marker] at @s if score Theme BuildGlobal matches 4 run setblock ~ ~ ~1 minecraft:structure_block[mode=load]{posX:0,posY:0,posZ:-21,sizeX:21,sizeY:23,sizeZ:21,name:"lt20:build_competition_templates/tree_house",mode:"LOAD"}
execute as @e[tag=build_competition_structure_marker] at @s if score Theme BuildGlobal matches 4 run fill -1299 69 1892 -1149 69 1964 grass_block replace minecraft:light_blue_terracotta

execute as @e[tag=build_competition_structure_marker] at @s if score Theme BuildGlobal matches 7 run fill -1299 69 1892 -1149 69 1964 gravel replace minecraft:light_blue_terracotta


# Activates structure blocks
execute as @e[tag=build_competition_structure_marker] at @s run setblock ~ ~1 ~1 minecraft:redstone_block
execute as @e[tag=build_competition_structure_marker] at @s run fill ~ ~ ~1 ~ ~1 ~1 minecraft:air
