execute unless score @s scavenger_hunt matches 0.. run scoreboard players set @s scavenger_hunt 0
execute if score @s scavenger_hunt matches 4.. run give @p written_book{pages:['["",{"text":"___________________","color":"#BLACK"},{"text":"\\n\\nDon\\u2019t fiddle around with me, your next clue might be found doing the 7th of me.\\n","color":"reset"},{"text":"___________________","color":"#BLACK"}]'],title:"Clue #5",author:"The Riddle Master"}
execute if score @s scavenger_hunt matches 4 run scoreboard players set @s scavenger_hunt 5
execute if score @s scavenger_hunt matches 0..4 run tellraw @s ["",{"text":"You must complate the "},{"text":"scavenger hunt","bold":true,"color":"red"},{"text":" in order"}]