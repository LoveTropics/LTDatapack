kill @e[tag=hole19Start]
kill @e[tag=hole19End]
kill @e[tag=hole19Marker]
kill @e[tag=hole19Dummy]
kill @e[tag=hole20Start]
kill @e[tag=hole20End]
kill @e[tag=hole20Marker]
kill @e[tag=hole20Dummy]
kill @e[tag=hole21Start]
kill @e[tag=hole21End]
kill @e[tag=hole21Marker]
kill @e[tag=hole21Dummy]
kill @e[tag=hole22Start]
kill @e[tag=hole22End]
kill @e[tag=hole22Marker]
kill @e[tag=hole22Dummy]
kill @e[tag=hole23Start]
kill @e[tag=hole23End]
kill @e[tag=hole23Marker]
kill @e[tag=hole23Dummy]
execute at @e[tag=hole19] run place template lt2023:golf_hole_19_clear
execute at @e[tag=hole20] run place template lt2023:golf_hole_20_clear
execute at @e[tag=hole21] run place template lt2023:golf_hole_21_clear
execute at @e[tag=hole22] run place template lt2023:golf_hole_22_clear
execute at @e[tag=hole23] run place template lt2023:golf_hole_23_clear
execute at @e[tag=golfWalk] run place template lt2023:golf_walkway_clear
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:moss_carpet"}}]
summon minecraft:marker 2746 127 2625 {Tags:["hole19"]}