execute unless score @s scavenger_hunt matches 0.. run scoreboard players set @s scavenger_hunt 0
execute if score @s scavenger_hunt matches 5 run playsound minecraft:ui.toast.challenge_complete neutral @a[distance=..15] ~ ~ ~ 1 1.2
execute if score @s scavenger_hunt matches 5 run tellraw @a ["",{"selector":"@p"},{"text":" has completed the scavenger hunt","color":"dark_green"}]
execute if score @s scavenger_hunt matches 5 run scoreboard players add Completed scavenger_hunt 1
execute if score @s scavenger_hunt matches 5 run give @s ltminigames:osa_point 32
execute if score @s scavenger_hunt matches 5 run scoreboard players set @s scavenger_hunt 6
execute if score @s scavenger_hunt matches 6 run give @p cookie{display:{Name:'[{"text":"CojoCookie","italic":false,"obfuscated":true,"color":"dark_green"}]',Lore:['[{"text":"A Very Tastey CojoCookie","italic":false}]']},Enchantments:[{}],HideFlags:2} 32
execute if score @s scavenger_hunt matches 6 run tellraw @p ["",{"text":"Come back any time for some more "},{"text":"cookies ","obfuscated":true}]
execute if score @s scavenger_hunt matches 0..5 run tellraw @s ["",{"text":"You must complate the "},{"text":"scavenger hunt","bold":true,"color":"red"},{"text":" in order"}]