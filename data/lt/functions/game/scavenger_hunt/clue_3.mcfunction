execute unless score @s scavenger_hunt matches 0.. run scoreboard players set @s scavenger_hunt 0
execute if score @s scavenger_hunt matches 2.. run give @p written_book{pages:['{"text":"___________________\\n\\nYou need to get caught in this web, so come and drink with me and Jeb\\n___________________"}'],title:"Clue #3",author:"The Riddle Master"}
execute if score @s scavenger_hunt matches 2 run scoreboard players set @s scavenger_hunt 3
execute if score @s scavenger_hunt matches 0..2 run tellraw @s ["",{"text":"You must complate the "},{"text":"scavenger hunt","bold":true,"color":"red"},{"text":" in order"}]
