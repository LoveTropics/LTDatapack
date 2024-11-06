execute unless score TrashCounter trashPlacer matches -1 run scoreboard players set TrashCounter trashPlacer 0
execute unless score TrashCounter trashPlacer matches -1 as @e[type=minecraft:marker,tag=trash] at @s if block ~ ~ ~ #lt:trash run scoreboard players add TrashCounter trashPlacer 1
execute if score TrashCounter trashPlacer matches 0 run title @a title {"bold":true,"text":"GG"}
execute if score TrashCounter trashPlacer matches 0 run execute as @a at @s run playsound minecraft:item.goat_horn.sound.3
execute if score TrashCounter trashPlacer matches 0 run scoreboard players set TrashCounter trashPlacer -1

