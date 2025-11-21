execute as @p if score @s world_game.scavenger_hunt.stats matches 1.. run collectible give @s item minecraft:written_book[ltextras:interact_action={click_events:{action:show_dialog,dialog:"lt:scavenger_hunt/02"},cancel_event:true},written_book_content={resolved:true,author:"The Puzzle Whisperer",pages:[{text:"1"}],title:"Clue 2"}]
execute as @p if score @s world_game.scavenger_hunt.stats matches 1.. run scoreboard players set @s world_game.scavenger_hunt.stats 2
execute as @p unless score @s world_game.scavenger_hunt.stats matches 1.. run tellraw @s {"translate":"lt.scavenger_hunt.order"}
execute as @p unless score @s world_game.scavenger_hunt.stats matches 1.. run playsound ltminigames:incorrect voice @s
