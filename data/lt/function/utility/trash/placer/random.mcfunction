execute store result score random trashPlacer run random value 1..8
execute as @e[type=minecraft:marker,tag=trash] at @s if score random trashPlacer matches 1 unless block ~ ~ ~ #lt:trash run setblock ~ ~ ~ ltminigames:can
execute as @e[type=minecraft:marker,tag=trash] at @s if score random trashPlacer matches 2 unless block ~ ~ ~ #lt:trash run setblock ~ ~ ~ ltminigames:chip_bag
execute as @e[type=minecraft:marker,tag=trash] at @s if score random trashPlacer matches 3 unless block ~ ~ ~ #lt:trash run setblock ~ ~ ~ ltminigames:cola_standing
execute as @e[type=minecraft:marker,tag=trash] at @s if score random trashPlacer matches 4 unless block ~ ~ ~ #lt:trash run setblock ~ ~ ~ ltminigames:cola
execute as @e[type=minecraft:marker,tag=trash] at @s if score random trashPlacer matches 5 unless block ~ ~ ~ #lt:trash run setblock ~ ~ ~ ltminigames:plastic_bag
execute as @e[type=minecraft:marker,tag=trash] at @s if score random trashPlacer matches 6 unless block ~ ~ ~ #lt:trash run setblock ~ ~ ~ ltminigames:plastic_bottle
execute as @e[type=minecraft:marker,tag=trash] at @s if score random trashPlacer matches 7 unless block ~ ~ ~ #lt:trash run setblock ~ ~ ~ ltminigames:plastic_rings
execute as @e[type=minecraft:marker,tag=trash] at @s if score random trashPlacer matches 8 unless block ~ ~ ~ #lt:trash run setblock ~ ~ ~ ltminigames:straw