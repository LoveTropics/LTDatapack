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
kill @e[tag=golf19Walk]
kill @e[tag=golf22Walk]
summon minecraft:marker 2746 127 2625 {Tags:["hole19"]}
summon minecraft:marker 2716 127 2622 {Tags:["hole20"]}
summon minecraft:marker 2724 127 2593 {Tags:["hole21"]}
summon minecraft:marker 2682 127 2583 {Tags:["hole22"]}
summon minecraft:marker 2681 127 2618 {Tags:["hole23"]}
summon minecraft:marker 2690 128 2666 {Tags:["golfWalk"]}
execute at @e[tag=hole19] run place template lt2023:golf_hole_19_clear
execute at @e[tag=hole20] run place template lt2023:golf_hole_20_clear
execute at @e[tag=hole21] run place template lt2023:golf_hole_21_clear
execute at @e[tag=hole22] run place template lt2023:golf_hole_22_clear
execute at @e[tag=hole23] run place template lt2023:golf_hole_23_clear
execute at @e[tag=golfWalk] run place template lt2023:golf_walkway_clear
execute in tropicraft:tropics run fill 2694 129 2669 2690 128 2663 air
execute in tropicraft:tropics run fill 2684 126 2626 2698 126 2640 water
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:moss_carpet"}}]
kill @e[tag=hole19]
kill @e[tag=hole20]
kill @e[tag=hole21]
kill @e[tag=hole22]
kill @e[tag=hole23]