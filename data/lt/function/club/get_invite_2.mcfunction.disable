# Give tag
tag @s add club.can_enter

# Remove tag given after gibnut encounter
tag @s remove club.needs_invite_2

# Try giving item directly
give @s ltextras:invite[custom_data={clubInviteTwo:1b},ltextras:collectible={},ltextras:undroppable={},ltextras:image={height:292.0f,name:{extra:[{obfuscated:1b,text:"..."},{color:"dark_purple",text:" 1 "},{obfuscated:1b,text:"..."}],text:""},text:[{align_horizontal:"center",align_vertical:"end",line_spacing:18.0f,max_width:125.0f,text:{color:"#D6B3E0",translate:"invite.ltextras.club_2.top"},x:287.0f,y:153.0f},{align_horizontal:"center",align_vertical:"start",line_spacing:18.0f,max_width:125.0f,text:{color:"#D6B3E0",translate:"invite.ltextras.club_2.bottom"},x:287.0f,y:191.0f}],texture:"ltextras:textures/images/ccfucc_invite_2.png",width:371.0f},display:{Name:'[{"text":"xxx","color":"white","italic":false,"obfuscated":true},{"text":" 2 ","color":"dark_purple","italic":false,"obfuscated":false},{"text":"xxx","color":"white","italic":false,"obfuscated":true}]'}]

# Add item to collectibles menu
collectible give @s ltextras:invite[custom_data={clubInviteTwo:1b},ltextras:undroppable={},ltextras:image={height:292.0f,name:{extra:[{obfuscated:1b,text:"..."},{color:"dark_purple",text:" 1 "},{obfuscated:1b,text:"..."}],text:""},text:[{align_horizontal:"center",align_vertical:"end",line_spacing:18.0f,max_width:125.0f,text:{color:"#D6B3E0",translate:"invite.ltextras.club_2.top"},x:287.0f,y:153.0f},{align_horizontal:"center",align_vertical:"start",line_spacing:18.0f,max_width:125.0f,text:{color:"#D6B3E0",translate:"invite.ltextras.club_2.bottom"},x:287.0f,y:191.0f}],texture:"ltextras:textures/images/ccfucc_invite_2.png",width:371.0f},display:{Name:'[{"text":"xxx","color":"white","italic":false,"obfuscated":true},{"text":" 2 ","color":"dark_purple","italic":false,"obfuscated":false},{"text":"xxx","color":"white","italic":false,"obfuscated":true}]'}]

# Reset invCheck obj
scoreboard players reset @s club.invCheck

# Check if player got invite
execute store success score @s club.invCheck run data get entity @s Inventory[{components:{'minecraft:custom_data':{clubInviteTwo:1b}}]

# CASE: Player got invite
execute if score @s club.invCheck matches 1 run tellraw @s [{"text":"Club","color":"dark_purple","obfuscated":true},{"translate": "lt.club.message.invite_2.succeed","color": "gray","obfuscated":false}]
execute if score @s club.invCheck matches 1 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 2 1

# CASE: Player didn't get invite
execute if score @s[tag=!club.full_inventory] club.invCheck matches 0 if items entity @e[type=item,distance=..3] contents *[custom_data~{clubInviteTwo:1b}] run tellraw @s [{"text":"Club","color":"dark_purple","obfuscated":true},{"translate": "lt.club.message.invite_2.fail","color": "gray","obfuscated":false}]
execute if score @s[tag=club.full_inventory] club.invCheck matches 0 if items entity @e[type=item,distance=..3] contents *[custom_data~{clubInviteTwo:1b}] run tellraw @s [{"text":"Club","color":"dark_purple","obfuscated":true},{"translate": "lt.club.message.invite_2.special","color": "gray","obfuscated":false}]
execute if score @s club.invCheck matches 0 if items entity @e[type=item,distance=..3] contents *[custom_data~{clubInviteTwo:1b}] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2 1
execute if score @s club.invCheck matches 0 as @e[type=item] if items entity @s contents *[custom_data~{clubInviteTwo:1b}] run kill @s

# Reset invCheck obj
scoreboard players reset @s club.invCheck
