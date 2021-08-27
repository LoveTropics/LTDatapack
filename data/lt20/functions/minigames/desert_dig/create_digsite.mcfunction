## Create digsite corner marker
execute as @e[tag=create_digsite] if entity @e[tag=digsite_corner] run tellraw @p {"text":"A digsite already exists!","color":"red"}
execute as @e[tag=create_digsite] if entity @e[tag=digsite_corner] run kill @s
execute as @e[tag=create_digsite] at @s run summon leash_knot ~ ~ ~ {Tags:["center_digsite"]}
execute as @e[tag=create_digsite] run kill @s
execute as @e[tag=center_digsite] at @s run summon armor_stand ~ ~ ~ {Tags:["digsite_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute as @e[tag=center_digsite] run kill @s

## Create structure markers

# Row 1
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~1 ~ ~1 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~7 ~ ~1 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~13 ~ ~1 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~19 ~ ~1 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}

# Row 2
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~1 ~ ~7 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~7 ~ ~7 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~13 ~ ~7 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~19 ~ ~7 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}

# Row 3
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~1 ~ ~13 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~7 ~ ~13 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~13 ~ ~13 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~19 ~ ~13 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}

# Row 4
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~1 ~ ~19 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~7 ~ ~19 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~13 ~ ~19 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=digsite_corner,tag=!loaded] run summon armor_stand ~19 ~ ~19 {Tags:["digsite_structure_corner"],Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}

# Create Border
execute at @e[tag=digsite_corner,tag=!loaded] run setblock ~ ~ ~ minecraft:structure_block{posX:0,mode:"LOAD",posY:-7,sizeX:27,posZ:0,name:"lt20:ruins/digsite_border",sizeY:7,sizeZ:27}
execute at @e[tag=digsite_corner,tag=!loaded] run setblock ~ ~1 ~ minecraft:redstone_block
execute at @e[tag=digsite_corner,tag=!loaded] run fill ~ ~ ~ ~ ~1 ~ air
execute at @e[tag=digsite_corner,tag=!loaded] run tellraw @p {"text":"Digsite Setup!","color":"blue"}

execute as @e[tag=digsite_corner] run tag @s add loaded
