tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @a {"text":"\n----------------------------------------\n","color":"dark_aqua"}
tellraw @a [{"text":"Failure.","color":"red","bold":true},{"text":"You have lost, without enough signatures, the petition has failed. The Company proceeds without issue and eventually clearcuts much of the forest. It can take upwards of 4000 years for a rainforest to regain its previous biodiversity and unique ecological footprint. The company may have made millions off the land it deforested. They may have payed less than a 20th of that to obtain the rights to clearcut. And due to local and federal governmental corruption, the locals may see very little if any of the money.","color":"white","bold":false}]
tellraw @a {"text":"\n----------------------------------------","color":"dark_aqua"}
execute as @a at @s run playsound minecraft:item.signature_run.failure master @s ~ ~ ~ 2 1
function lt20:minigames/signature_run/stop
