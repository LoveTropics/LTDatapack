# Give tag
tag @s add club.has_enough_disguises

# Try giving item directly
give @s ltextras:invite{collectible_marker:1b,clubInviteOne:1b,undroppable:1b,image:{height:292.0f,name:{extra:[{obfuscated:1b,text:"..."},{color:"dark_purple",text:" 1 "},{obfuscated:1b,text:"..."}],text:""},text:[{align_horizontal:"center",align_vertical:"end",line_spacing:18.0f,max_width:125.0f,text:{color:"#D6B3E0",translate:"invite.ltextras.club_1.top"},x:287.0f,y:153.0f},{align_horizontal:"center",align_vertical:"start",line_spacing:18.0f,max_width:125.0f,text:{color:"#D6B3E0",translate:"invite.ltextras.club_1.bottom"},x:287.0f,y:191.0f}],texture:"ltextras:textures/images/ccfucc_invite_1.png",width:371.0f},display:{Name:'[{"text":"xxx","color":"white","italic":false,"obfuscated":true},{"text":" 1 ","color":"dark_purple","italic":false,"obfuscated":false},{"text":"xxx","color":"white","italic":false,"obfuscated":true}]'}}

# Add item to collectibles menu
collectible give @s ltextras:invite{clubInviteOne:1b,undroppable:1b,image:{height:292.0f,name:{extra:[{obfuscated:1b,text:"..."},{color:"dark_purple",text:" 1 "},{obfuscated:1b,text:"..."}],text:""},text:[{align_horizontal:"center",align_vertical:"end",line_spacing:18.0f,max_width:125.0f,text:{color:"#D6B3E0",translate:"invite.ltextras.club_1.top"},x:287.0f,y:153.0f},{align_horizontal:"center",align_vertical:"start",line_spacing:18.0f,max_width:125.0f,text:{color:"#D6B3E0",translate:"invite.ltextras.club_1.bottom"},x:287.0f,y:191.0f}],texture:"ltextras:textures/images/ccfucc_invite_1.png",width:371.0f},display:{Name:'[{"text":"xxx","color":"white","italic":false,"obfuscated":true},{"text":" 1 ","color":"dark_purple","italic":false,"obfuscated":false},{"text":"xxx","color":"white","italic":false,"obfuscated":true}]'}}

# Reset invCheck obj
scoreboard players reset @s club.invCheck

# Check if player got invite
execute store success score @s club.invCheck run data get entity @s Inventory[{tag:{clubInviteOne:1b}}]

# CASE: Player got invite
execute if score @s club.invCheck matches 1 run tellraw @s [{"text":"Club","color":"dark_purple","obfuscated":true},{"translate": "lt.club.message.invite_1.succeed","color": "gray","obfuscated":false}]
execute if score @s club.invCheck matches 1 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 2 1

# CASE: Player didn't get invite
execute if score @s club.invCheck matches 0 if entity @e[type=item,nbt={Item:{tag:{clubInviteOne:1b}}},distance=..3] run tellraw @s [{"text":"Club","color":"dark_purple","obfuscated":true},{"translate": "lt.club.message.invite_1.fail","color": "gray","obfuscated":false}]
execute if score @s club.invCheck matches 0 if entity @e[type=item,nbt={Item:{tag:{clubInviteOne:1b}}},distance=..3] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2 1
execute if score @s club.invCheck matches 0 if entity @e[type=item,nbt={Item:{tag:{clubInviteOne:1b}}},distance=..3] run tag @s add club.full_inventory
execute if score @s club.invCheck matches 0 run kill @e[type=item,nbt={Item:{tag:{clubInviteOne:1b}}}]

# Reset invCheck obj
scoreboard players reset @s club.invCheck