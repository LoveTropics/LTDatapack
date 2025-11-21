execute as @p if score @s world_game.scavenger_hunt.stats matches 3.. run collectible give @s item minecraft:written_book[ltextras:interact_action={click_events:{action:show_dialog,dialog:"lt:scavenger_hunt/04"},cancel_event:true},written_book_content={resolved:true,author:"The Puzzle Whisperer",pages:[{text:"1"}],title:"Clue 4"}]
execute as @p if score @s world_game.scavenger_hunt.stats matches 3 run scoreboard players add clue_4 world_game.scavenger_hunt.stats 1
execute as @p if score @s world_game.scavenger_hunt.stats matches 3.. run scoreboard players set @s world_game.scavenger_hunt.stats 4
execute as @p unless score @s world_game.scavenger_hunt.stats matches 3.. run tellraw @s {"translate":"lt.scavenger_hunt.order"}
execute as @p unless score @s world_game.scavenger_hunt.stats matches 3.. run playsound ltminigames:incorrect voice @s
