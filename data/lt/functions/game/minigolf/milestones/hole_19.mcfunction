kill @e[tag=hole19Start]
kill @e[tag=hole19End]
kill @e[tag=hole19Marker]
kill @e[tag=hole19Dummy]
kill @e[tag=hole19]
summon minecraft:marker 2746 127 2625 {Tags:["hole19"]}
execute at @e[tag=hole19] run place template lt2023:golf_hole_19
kill @e[tag=hole19]