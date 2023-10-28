kill @e[tag=hole23Start]
kill @e[tag=hole23End]
kill @e[tag=hole23Marker]
kill @e[tag=hole23Dummy]
kill @e[tag=hole23]
kill @e[tag=golfWalk]
summon minecraft:marker 2681 127 2618 {Tags:["hole23"]}
execute at @e[tag=hole23] run place template lt2023:golf_hole_23
execute at @e[tag=golfWalk] run place template lt2023:golf_walkway
kill @e[tag=hole23]
kill @e[tag=golfWalk]