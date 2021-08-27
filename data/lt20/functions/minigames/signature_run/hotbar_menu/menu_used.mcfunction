### Available Menu Option Commands
# Collect Signature
execute as @s[tag=sigrun_player,nbt={Inventory:[{Slot:-106b,tag:{MenuItem:1b,CollectSigAvailable:1b}}]}] at @s run function lt20:minigames/signature_run/hotbar_menu/options/collect_signature
# General Interact
execute as @s[tag=sigrun_player,nbt={Inventory:[{Slot:-106b,tag:{MenuItem:1b,GeneralInteractAvailable:1b}}]}] at @s run function lt20:minigames/signature_run/hotbar_menu/options/general_interact

# To Disaster
execute as @s[tag=sigrun_player,nbt={Inventory:[{Slot:-106b,tag:{MenuItem:1b,TeleportDisasterAvailable:1b}}]}] at @s run function lt20:minigames/signature_run/hotbar_menu/options/to_disaster
# To Oh No!
execute as @s[tag=sigrun_player,nbt={Inventory:[{Slot:-106b,tag:{MenuItem:1b,TeleportOhNoAvailable:1b}}]}] at @s run function lt20:minigames/signature_run/hotbar_menu/options/to_ohno


### Unavilable Menu Option Commands
execute as @s[tag=sigrun_player,nbt={Inventory:[{Slot:-106b,tag:{MenuItem:1b,MenuOption:1b}}]}] at @s run function lt20:minigames/signature_run/hotbar_menu/options/option_unavailable


# Clears players offhand Slot
replaceitem entity @s weapon.offhand minecraft:air
