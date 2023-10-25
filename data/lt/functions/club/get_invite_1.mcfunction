# Give tag
tag @s add club.has_enough_disguises

# Try giving item directly
give @s ltextras:invite{clubInviteOne:1b,image:{width:371.0f,height:292.0f,texture:"ltextras:textures/images/ccfucc_invite_1.png"},display:{Name:'[{"text":"xxx","color":"white","italic":false,"obfuscated":true},{"text":" 1 ","color":"dark_purple","italic":false,"obfuscated":false},{"text":"xxx","color":"white","italic":false,"obfuscated":true}]'}}

# Add item to collectibles menu
collectible give @s ltextras:invite{clubInviteOne:1b,image:{width:371.0f,height:292.0f,texture:"ltextras:textures/images/ccfucc_invite_1.png"},display:{Name:'[{"text":"xxx","color":"white","italic":false,"obfuscated":true},{"text":" 1 ","color":"dark_purple","italic":false,"obfuscated":false},{"text":"xxx","color":"white","italic":false,"obfuscated":true}]'}}

# Reset invCheck obj
scoreboard players reset @s club.invCheck

# Check if player got invite
execute store success score @s club.invCheck run data get entity @s Inventory[{tag:{clubInviteOne:1b}}]

# CASE: Player got invite
execute if score @s club.invCheck matches 1 run tellraw @s [{"text":"Club","color":"dark_purple","obfuscated":true},{"text":": You've been given an item. Try holding it. We look forward to not knowing you.","color":"gray","italic":true,"obfuscated":false}]
execute if score @s club.invCheck matches 1 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 2 1

# CASE: Player didn't get invite
execute if score @s club.invCheck matches 0 if entity @e[type=item,nbt={Item:{tag:{clubInviteOne:1b}}},distance=..3] run tellraw @s [{"text":"Club","color":"dark_purple","obfuscated":true},{"text":": We tried to give you an item, but your inventory was full. You can now find it in your collectibles basket. Try holding it. We look forward to not knowing you.","color":"gray","italic":true,"obfuscated":false}]
execute if score @s club.invCheck matches 0 if entity @e[type=item,nbt={Item:{tag:{clubInviteOne:1b}}},distance=..3] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2 1
execute if score @s club.invCheck matches 0 if entity @e[type=item,nbt={Item:{tag:{clubInviteOne:1b}}},distance=..3] run tag @s add club.full_inventory
execute if score @s club.invCheck matches 0 run kill @e[type=item,nbt={Item:{tag:{clubInviteOne:1b}}}]

# Reset invCheck obj
scoreboard players reset @s club.invCheck