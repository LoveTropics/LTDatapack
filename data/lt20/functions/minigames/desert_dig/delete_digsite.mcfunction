execute as @e[tag=delete_digsite] at @s unless entity @e[tag=digsite_corner,distance=..2] run kill @s
execute as @e[tag=delete_digsite] at @s if entity @e[tag=digsite_corner,distance=..2] run kill @e[tag=digsite_structure_corner]
execute as @e[tag=delete_digsite] at @s if entity @e[tag=digsite_corner,distance=..2] run tellraw @p {"text":"Digsite Deleted!","color":"green"}
execute as @e[tag=delete_digsite] at @s if entity @e[tag=digsite_corner,distance=..2] run kill @e[tag=digsite_corner,distance=..2]
