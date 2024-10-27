$data modify entity @e[tag=hole$(hole)Crab,limit=1,current_world=true] Health set value -1000
$kill @e[tag=hole$(hole)Text,current_world=true]
$execute at @a[tag=hole$(hole)Player,current_world=true] run kill @e[type=minecraft:experience_orb,distance=..20]