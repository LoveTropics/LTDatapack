collectible give @s item minecraft:written_book[ltextras:interact_action={click_events:{action:show_dialog,dialog:"lt:scavenger_hunt/01"},cancel_event:true},written_book_content={resolved:true,author:"The Puzzle Whisperer",pages:[{text:"1"}],title:"Clue 1"}]
execute as @p unless score @s world_game.scavenger_hunt.stats matches 1.. run scoreboard players add clue_1 world_game.scavenger_hunt.stats 1
execute as @p unless score @s world_game.scavenger_hunt.stats matches 1.. run scoreboard players set @s world_game.scavenger_hunt.stats 1
