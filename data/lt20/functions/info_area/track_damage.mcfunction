execute if entity @e[tag=info_type_turtle_race,nbt={HurtTime:10s}] run function lt20:info_area/info/turtle_race
execute if entity @e[tag=info_type_free_build_1,nbt={HurtTime:10s}] run function lt20:info_area/info/free_build_1
execute if entity @e[tag=info_type_free_build_2,nbt={HurtTime:10s}] run function lt20:info_area/info/free_build_2
execute if entity @e[tag=info_type_concert_cabana,nbt={HurtTime:10s}] run function lt20:info_area/info/concert_cabana
execute if entity @e[tag=info_type_volcano_spleef,nbt={HurtTime:10s}] run function lt20:info_area/info/volcano_spleef
execute if entity @e[tag=info_type_treasure_hunt,nbt={HurtTime:10s}] run function lt20:info_area/info/treasure_hunt
execute if entity @e[tag=info_type_carnival,nbt={HurtTime:10s}] run function lt20:info_area/info/carnival
execute if entity @e[tag=info_type_bee_island,nbt={HurtTime:10s}] run function lt20:info_area/info/bee_island

execute as @e[tag=info_type_turtle_race,nbt={HurtTime:10s}] at @s run particle minecraft:composter ~ ~1.75 ~ 0.25 0.25 0.25 0.1 35 force @a[scores={InfoDamageTrack=1..}]
execute as @e[tag=info_type_free_build_1,nbt={HurtTime:10s}] at @s run particle minecraft:composter ~ ~1.75 ~ 0.25 0.25 0.25 0.1 35 force @a[scores={InfoDamageTrack=1..}]
execute as @e[tag=info_type_free_build_2,nbt={HurtTime:10s}] at @s run particle minecraft:composter ~ ~1.75 ~ 0.25 0.25 0.25 0.1 35 force @a[scores={InfoDamageTrack=1..}]
execute as @e[tag=info_type_concert_cabana,nbt={HurtTime:10s}] at @s run particle minecraft:composter ~ ~1.75 ~ 0.25 0.25 0.25 0.1 35 force @a[scores={InfoDamageTrack=1..}]
execute as @e[tag=info_type_volcano_spleef,nbt={HurtTime:10s}] at @s run particle minecraft:composter ~ ~1.75 ~ 0.25 0.25 0.25 0.1 35 force @a[scores={InfoDamageTrack=1..}]
execute as @e[tag=info_type_treasure_hunt,nbt={HurtTime:10s}] at @s run particle minecraft:composter ~ ~1.75 ~ 0.25 0.25 0.25 0.1 35 force @a[scores={InfoDamageTrack=1..}]
execute as @e[tag=info_type_carnival,nbt={HurtTime:10s}] at @s run particle minecraft:composter ~ ~1.75 ~ 0.25 0.25 0.25 0.1 35 force @a[scores={InfoDamageTrack=1..}]
execute as @e[tag=info_type_bee_island,nbt={HurtTime:10s}] at @s run particle minecraft:composter ~ ~1.75 ~ 0.25 0.25 0.25 0.1 35 force @a[scores={InfoDamageTrack=1..}]

playsound minecraft:block.note_block.chime master @s ~ ~ ~ 2 1
data merge entity @e[tag=info_area_zombie,sort=nearest,limit=1] {HurtTime:0s}
