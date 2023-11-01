# Remove advancement
advancement revoke @s only lt:pina_colada_drink_test

execute if entity @s[tag=!utility.spawn_island.joined] run effect clear @s
execute if entity @s[tag=!utility.spawn_island.joined] run effect give @s nausea infinite 0 true
execute if entity @s[tag=!utility.spawn_island.joined] run scoreboard players set @s spawn_island.time 80

tag @s add utility.spawn_island.joined