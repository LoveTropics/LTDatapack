kill @e[tag=Worker]
kill @e[type=item]
execute as @e[tag=sigrun_forest_plot_1-1] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_1-1_2",sizeY:32,sizeZ:32,showboundingbox:0b}
execute as @e[tag=sigrun_forest_plot_1-2] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_1-2_2",sizeY:32,sizeZ:32,showboundingbox:0b}
execute as @e[tag=sigrun_forest_plot_1-3] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_1-3_2",sizeY:32,sizeZ:32,showboundingbox:0b}

execute as @e[tag=sigrun_forest_plot_2-2] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_2-2_2",sizeY:32,sizeZ:32,showboundingbox:0b}
execute as @e[tag=sigrun_forest_plot_2-3] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:signature_run/forest/sigrun_forest_plot_2-3_2",sizeY:32,sizeZ:32,showboundingbox:0b}

execute as @e[tag=sigrun_forest_plot] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=sigrun_forest_plot] at @s run fill ~ ~-1 ~ ~ ~ ~ air
kill @e[type=item]
team join SigRunCollision @e[tag=Worker]


#summon minecraft:zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"SigRunCollision",PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["Worker","SigRunNPC"],CustomName:'{"text":"Logging Contractor","color":"yellow"}',ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:11382189}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16776960}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"f752596d-f625-4aef-99f9-88d536ec09e1",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTJjNWI5ZTFhNmNhYjBhN2ExYTQzYTY5MWVkZDJjYTJlZmFhNjI2OWUzNmJkM2ZlYmNmM2UxYTAyOTBhNTA3ZSJ9fX0="}]}}}}],Attributes:[{Name:generic.followRange,Base:0},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0},{Name:generic.attackDamage,Base:0},{Name:zombie.spawnReinforcements,Base:0}]}
tellraw @a {"text":"The logging camp has expanded.","color":"red","bold":true}
execute as @a[tag=sigrun_player] at @s run playsound minecraft:entity.enderman.death master @s ~ ~ ~ 2 1
