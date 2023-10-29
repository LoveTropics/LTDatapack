kill @e[tag=hole21Start]
kill @e[tag=hole21End]
kill @e[tag=hole21Marker]
kill @e[tag=hole21Dummy]
kill @e[tag=hole22]
summon minecraft:marker 2724 127 2593 {Tags:["hole21"]}
execute at @e[tag=hole21] run place template lt2023:golf_hole_21
kill @e[tag=hole22]
tellraw @a {"translate": "lt.golf.course_unlocked"}