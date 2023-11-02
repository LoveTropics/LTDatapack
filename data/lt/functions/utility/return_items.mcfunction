execute unless data entity @s Inventory[{id:"ltextras:tropical_map"}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.2
execute unless data entity @s Inventory[{id:"ltextras:tropical_map"}] run tellraw @s {"translate":"lt.utility.spawn.return_item_message.collectible_basket","color":"yellow"}
execute unless data entity @s Inventory[{id:"ltextras:tropical_map"}] run function lt:collectible/give/utility/tropical_map

execute unless data entity @s Inventory[{id:"ltextras:collectible_basket"}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.2
execute unless data entity @s Inventory[{id:"ltextras:collectible_basket"}] run tellraw @s {"translate":"lt.utility.spawn.return_item_message.tropical_map","color":"yellow"}
execute unless data entity @s Inventory[{id:"ltextras:collectible_basket"}] run function lt:collectible/give/utility/collectible_basket