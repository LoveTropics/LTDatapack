execute as @p if score @s world_game.scavenger_hunt.stats matches 4.. run collectible give @s item minecraft:written_book[ltextras:interact_action={click_events:{action:show_dialog,dialog:"lt:scavenger_hunt/05"},cancel_event:true},written_book_content={resolved:true,author:"The Puzzle Whisperer",pages:[{text:"1"}],title:"Clue 5"}]
execute as @p if score @s world_game.scavenger_hunt.stats matches 4 run scoreboard players add clue_5 world_game.scavenger_hunt.stats 1
execute as @p if score @s world_game.scavenger_hunt.stats matches 4.. run scoreboard players set @s world_game.scavenger_hunt.stats 5
execute as @p unless score @s world_game.scavenger_hunt.stats matches 4.. run tellraw @s {"translate":"lt.scavenger_hunt.order"}
execute as @p unless score @s world_game.scavenger_hunt.stats matches 4.. run playsound ltminigames:incorrect voice @s
