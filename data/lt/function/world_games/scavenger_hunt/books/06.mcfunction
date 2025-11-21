execute as @p if score @s world_game.scavenger_hunt.stats matches 5.. run tellraw @s {"translate":"lt.scavenger_hunt.win"}
execute as @p if score @s world_game.scavenger_hunt.stats matches 5 run scoreboard players add clue_6 world_game.scavenger_hunt.stats 1
execute as @p if score @s world_game.scavenger_hunt.stats matches 5.. run scoreboard players set @s world_game.scavenger_hunt.stats 6
execute as @p unless score @s world_game.scavenger_hunt.stats matches 5.. run tellraw @s {"translate":"lt.scavenger_hunt.order"}
execute as @p if score @s world_game.scavenger_hunt.stats matches 3.. run collectible give @s lt:disguise/allay
execute as @p unless score @s world_game.scavenger_hunt.stats matches 5.. run playsound ltminigames:incorrect voice @s
