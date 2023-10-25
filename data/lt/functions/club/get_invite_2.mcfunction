# Give tag
tag @s add club.can_enter

# Remove tag given after gibnut encounter
tag @s remove club.needs_invite_2

# Try giving item directly
give @s ltextras:invite{clubInviteTwo:1b,image:{width:371.0f,height:292.0f,texture:"ltextras:textures/images/ccfucc_invite_2.png"},display:{Name:'[{"text":"xxx","color":"white","italic":false,"obfuscated":true},{"text":" 2 ","color":"dark_purple","italic":false,"obfuscated":false},{"text":"xxx","color":"white","italic":false,"obfuscated":true}]'}}

# Add item to collectibles menu
collectible give @s ltextras:invite{clubInviteTwo:1b,image:{width:371.0f,height:292.0f,texture:"ltextras:textures/images/ccfucc_invite_2.png"},display:{Name:'[{"text":"xxx","color":"white","italic":false,"obfuscated":true},{"text":" 2 ","color":"dark_purple","italic":false,"obfuscated":false},{"text":"xxx","color":"white","italic":false,"obfuscated":true}]'}}

# Reset invCheck obj
scoreboard players reset @s club.invCheck

# Check if player got invite
execute store success score @s club.invCheck run data get entity @s Inventory[{tag:{clubInviteTwo:1b}}]

# CASE: Player got invite
execute if score @s club.invCheck matches 1 run tellraw @s [{"text":"Club","color":"dark_purple","obfuscated":true},{"text":": We're glad you've come this far. Another item has been given to you.","color":"gray","italic":true,"obfuscated":false}]
execute if score @s club.invCheck matches 1 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 2 1

# CASE: Player didn't get invite
execute if score @s[tag=!club.full_inventory] club.invCheck matches 0 if entity @e[type=item,nbt={Item:{tag:{clubInviteTwo:1b}}},distance=..3] run tellraw @s [{"text":"Club","color":"dark_purple","obfuscated":true},{"text":": We tried to give you another item, but your inventory was full. You can now find a second item in your collectible basket. We're glad you've come this far.","color":"gray","italic":true,"obfuscated":false}]
execute if score @s[tag=club.full_inventory] club.invCheck matches 0 if entity @e[type=item,nbt={Item:{tag:{clubInviteTwo:1b}}},distance=..3] run tellraw @s [{"text":"Club","color":"dark_purple","obfuscated":true},{"text":": We're glad you've come this far but for the love of disguises clean up your inventory a bit! That's TWICE! IN A ROW! Y'know how much it costs to send these messages?! No, wait, you don't get to know! You're probably doing this on purpose to bankrupt us! You're lucky we're not allowed to reject members. You can now find a second item in your stupid collectible basket ...","color":"gray","italic":true,"obfuscated":false}]
execute if score @s club.invCheck matches 0 if entity @e[type=item,nbt={Item:{tag:{clubInviteTwo:1b}}},distance=..3] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2 1
execute if score @s club.invCheck matches 0 run kill @e[type=item,nbt={Item:{tag:{clubInviteTwo:1b}}}]

# Reset invCheck obj
scoreboard players reset @s club.invCheck