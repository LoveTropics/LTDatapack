setblock ~ ~-1 ~ air
summon leash_knot ~ ~-1 ~ {Tags:["falling_center"]}
execute at @e[tag=falling_center] run summon minecraft:falling_block ~ ~ ~ {Time:12,Motion:[0.0d,0.0d,0.0d],BlockState:{Name:"minecraft:black_concrete_powder"},Tags:["falling_spleef_block"]}
kill @e[tag=falling_center]
