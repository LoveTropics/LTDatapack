# Remove advancement
advancement revoke @s only lt:pina_colada_drink_test

# Remove collectible
# collectible clear @s tropicraft:pina_colada[minecraft:lore=['{"translate":"lt.collectible.refreshing_pina_colada.description","color":"gray"}','{"text":" "}','{"translate":"lt.collectible.generic.modifiers.when_consumed","color":"gray","italic":false}','{"translate":"lt.collectible.refreshing_pina_colada.tooltip.???","color":"blue","italic":false}'],minecraft:custom_name='{"translate":"lt.collectible.refreshing_pina_colada.name","color":"gold","italic":false,"bold":true}',minecraft:custom_data={SpawnColada:1b}]

# execute if entity @s[tag=!utility.spawn_island.joined] run effect clear @s
# execute if entity @s[tag=!utility.spawn_island.joined] run effect give @s nausea infinite 0 true
# execute if entity @s[tag=!utility.spawn_island.joined] run scoreboard players set @s spawn_island.time 80

tag @s add utility.spawn_island.joined