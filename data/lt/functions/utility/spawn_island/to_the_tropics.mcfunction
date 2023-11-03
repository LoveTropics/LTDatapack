# Remove advancement
advancement revoke @s only lt:pina_colada_drink_test

# Remove collectible
collectible clear @s tropicraft:pina_colada{SpawnColada:1b,display:{Name:'{"translate":"lt.collectible.refreshing_pina_colada.name","color":"gold","italic":false,"bold":true}',Lore:['{"translate":"lt.collectible.refreshing_pina_colada.description","color":"gray"}','{"text":" "}','{"translate":"lt.collectible.generic.modifiers.when_consumed","color":"gray","italic":false}','{"translate":"lt.collectible.refreshing_pina_colada.tooltip.???","color":"blue","italic":false}']}}

execute if entity @s[tag=!utility.spawn_island.joined] run effect clear @s
execute if entity @s[tag=!utility.spawn_island.joined] run effect give @s nausea infinite 0 true
execute if entity @s[tag=!utility.spawn_island.joined] run scoreboard players set @s spawn_island.time 80

tag @s add utility.spawn_island.joined