kill @e[tag=hole20Start]
kill @e[tag=hole20End]
kill @e[tag=hole20Marker]
kill @e[tag=hole20Dummy]
summon minecraft:marker 2716 127 2622 {Tags:["hole20"]}
execute at @e[tag=hole20] run place template lt2023:golf_hole_20
kill @e[tag=hole20]