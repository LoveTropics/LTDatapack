execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:player_head",Count:1b,tag:{powerupSiphon:1b}}]}] run function lt20:minigames/desert_dig/sand_drops/powerups/powerup_steal
execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:player_head",Count:1b,tag:{powerupTool:1b}}]}] run function lt20:minigames/desert_dig/sand_drops/powerups/powerup_tool_upgrade
execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:player_head",Count:1b,tag:{powerupBlind:1b}}]}] run function lt20:minigames/desert_dig/sand_drops/powerups/powerup_blindness
execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:player_head",Count:1b,tag:{powerupFatigue:1b}}]}] run function lt20:minigames/desert_dig/sand_drops/powerups/powerup_mining_fatigue
playsound minecraft:block.end_portal.spawn master @s
playsound minecraft:block.note_block.iron_xylophone master @s
clear @s minecraft:player_head
