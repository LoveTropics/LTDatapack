# Function run check
#title @a actionbar "FUNCTION RUNNING"

# Provide player competitors Y values in 's.player_y'
execute as @a[tag=game.party.spleef.player.competitor] if score state s.global matches 3 store result score @s s.player_y run data get entity @s Pos[1]

# Calculate players current floor as defined in version => VERSION => settings.mcfunction
# Values stored in the s.global scoreboard. Eg. SETTING.SETTING_NAME + VALUE
execute if score state s.global matches 3 if score SETTING.TOTAL_FLOORS s.global matches 1.. as @a[tag=game.party.spleef.player.competitor] if score @s s.player_y <= SETTING.FLOOR1Y_UPPER s.global if score @s s.player_y >= SETTING.FLOOR1Y_LOWER s.global run scoreboard players set @s s.player_floor 1
execute if score state s.global matches 3 if score SETTING.TOTAL_FLOORS s.global matches 2.. as @a[tag=game.party.spleef.player.competitor] if score @s s.player_y <= SETTING.FLOOR2Y_UPPER s.global if score @s s.player_y >= SETTING.FLOOR2Y_LOWER s.global run scoreboard players set @s s.player_floor 2
execute if score state s.global matches 3 if score SETTING.TOTAL_FLOORS s.global matches 3.. as @a[tag=game.party.spleef.player.competitor] if score @s s.player_y <= SETTING.FLOOR3Y_UPPER s.global if score @s s.player_y >= SETTING.FLOOR3Y_LOWER s.global run scoreboard players set @s s.player_floor 3
execute if score state s.global matches 3 if score SETTING.TOTAL_FLOORS s.global matches 4.. as @a[tag=game.party.spleef.player.competitor] if score @s s.player_y <= SETTING.FLOOR4Y_UPPER s.global if score @s s.player_y >= SETTING.FLOOR4Y_LOWER s.global run scoreboard players set @s s.player_floor 4
execute if score state s.global matches 3 if score SETTING.TOTAL_FLOORS s.global matches 5.. as @a[tag=game.party.spleef.player.competitor] if score @s s.player_y <= SETTING.FLOOR5Y_UPPER s.global if score @s s.player_y >= SETTING.FLOOR5Y_LOWER s.global run scoreboard players set @s s.player_floor 5

execute as @a[tag=game.party.spleef.player.competitor] if score state s.global matches 3 if score @s s.player_y <= SETTING.DISQUALIFY_LEVEL s.global run scoreboard players set @s s.player_floor -1

# If a player is below the 'SETTING.DISQUALIFY_LEVEL' their s.player_floor score will be -1 and the following command will disqualify them from the game
execute as @a[tag=game.party.spleef.player.competitor] at @s if score state s.global matches 3 if score @s s.player_floor matches -1 run function lt:game/party/spleef/player/disqualify

# Run version specific on_ticks
## Standard version
execute if score state s.global matches 3 if score SETTING.GAME_VERSION s.global matches 1 run function lt:game/party/spleef/version/standard/on_tick

# TNT version
execute if score state s.global matches 3 if score SETTING.GAME_VERSION s.global matches 2 run function lt:game/party/spleef/version/tnt/on_tick

# Kill da shovels and da blocks
execute at @e[tag=game.party.spleef.marker.world_finder] if score state s.global matches 3 run kill @e[type=item,distance=..500]

# Replace da shovels
execute as @a[tag=game.party.spleef.player.competitor] if score state s.global matches 3 if score SETTING.GAME_VERSION s.global matches 1 unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run item replace entity @s weapon with netherite_pickaxe{SpleefTool:1b,HideFlags:127,Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:100s}],CanDestroy:["minecraft:obsidian"]} 1

# Make da person win
execute if score state s.global matches 3 if score alive_competitors s.global matches 1 run execute as @a[tag=game.party.spleef.player.competitor] at @s run function lt:game/party/spleef/player/declare_winner
execute if score state s.global matches 3 if score alive_competitors s.global matches 0 run function lt:game/party/spleef/player/declare_tie

# give players weakness
effect give @a[tag=game.party.spleef.player] weakness 15 80 true
effect give @a[tag=game.party.spleef.player] minecraft:resistance 15 255 true
