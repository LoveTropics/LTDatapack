execute unless score @s scavenger_hunt matches 0.. run scoreboard players set @s scavenger_hunt 0
execute if score @s scavenger_hunt matches 1.. run give @p written_book{pages:['{"text":"___________________\\n\\nMy tower might shine into the sea. Though, climbing might not be the key.\\n___________________"}'],title:"Clue #2",author:"The Riddle Master"}
execute if score @s scavenger_hunt matches 1 run scoreboard players set @s scavenger_hunt 2
execute if score @s scavenger_hunt matches 0..0 run tellraw @s ["",{"text":"You must complate the "},{"text":"scavenger hunt","bold":true,"color":"red"},{"text":" in order"}]