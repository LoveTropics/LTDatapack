# Tracks spleef players Y levels
execute as @a[tag=spleef_player] at @s store result score @s SpleefYTrack run data get entity @s Pos[1]

# Kills falling blocks after tick delay
scoreboard players add @e[tag=falling_spleef_block] UnstableKDelay 1
kill @e[tag=falling_spleef_block,scores={UnstableKDelay=15..}]

# Causes floor to fall if layer is unstable
#execute as @a[tag=spleef_player,scores={SpleefYTrack=181}] at @s if score GameStage SpleefGlobal matches 1.. if block ~ ~-1 ~ air run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace #lt20:spleef_layer
execute as @a[tag=spleef_player,scores={SpleefYTrack=181}] at @s if score GameStage SpleefGlobal matches 1.. unless block ~ ~-1 ~ air run function lt20:minigames/volcano_spleef/create_falling_block

#execute as @a[tag=spleef_player,scores={SpleefYTrack=171}] at @s if score GameStage SpleefGlobal matches 2.. if block ~ ~-1 ~ air run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace #lt20:spleef_layer
execute as @a[tag=spleef_player,scores={SpleefYTrack=171}] at @s if score GameStage SpleefGlobal matches 2.. unless block ~ ~-1 ~ air run function lt20:minigames/volcano_spleef/create_falling_block

#execute as @a[tag=spleef_player,scores={SpleefYTrack=161}] at @s if score GameStage SpleefGlobal matches 3.. if block ~ ~-1 ~ air run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace #lt20:spleef_layer
execute as @a[tag=spleef_player,scores={SpleefYTrack=161}] at @s if score GameStage SpleefGlobal matches 3.. unless block ~ ~-1 ~ air run function lt20:minigames/volcano_spleef/create_falling_block

# Teleports players to their nearest start armour stand while game in first state
execute as @e[tag=SpleefSpawnMarker] at @s if score GameState SpleefGlobal matches 1 run tp @a[tag=spleef_player,distance=..2] @s

# Ends game if only one player remains
execute if score Players SpleefGlobal matches 1 run function lt20:minigames/volcano_spleef/end

# Tracks number of players in-game
scoreboard players set Players SpleefGlobal 0
execute as @a[tag=spleef_player] run scoreboard players add Players SpleefGlobal 1

# Makes player lose if Y level drops below 161
execute as @a[tag=spleef_player,scores={SpleefYTrack=..160}] at @s run function lt20:minigames/volcano_spleef/player/lose

# Tags blocks created by spleef
execute as @a[tag=spleef_player] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:coal_block"}},distance=..10] add spleef_block
execute as @a[tag=spleef_player] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:black_concrete"}},distance=..10] add spleef_block
execute as @a[tag=spleef_player] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:obsidian"}},distance=..10] add spleef_block

# Superpick effect
execute as @e[tag=spleef_block] at @s if score EffectSuperPick SpleefGlobal matches 1 run fill ~1 ~ ~ ~-1 ~ ~ air replace
execute as @e[tag=spleef_block] at @s if score EffectSuperPick SpleefGlobal matches 1 run fill ~ ~ ~1 ~ ~ ~-1 air replace

# Kills all items in the spleef arena
kill @e[type=item,tag=spleef_block]
execute as @a[tag=spleef_player] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}},distance=..10]

# Applies effects based on settings
execute if score GameState SpleefGlobal matches 2 if score EffectSpeed SpleefGlobal matches 1 run effect give @a[tag=spleef_player] speed 15 2 true
execute if score GameState SpleefGlobal matches 2 if score EffectJump SpleefGlobal matches 1 run effect give @a[tag=spleef_player] jump_boost 15 2 true
execute if score GameState SpleefGlobal matches 2 if score EffectSlow SpleefGlobal matches 1 run effect give @a[tag=spleef_player] slowness 15 2 true
execute if score GameState SpleefGlobal matches 2 if score EffectBlind SpleefGlobal matches 1 run effect give @a[tag=spleef_player] blindness 15 5 true
execute if score GameState SpleefGlobal matches 2 if score EffectInvis SpleefGlobal matches 1 run effect give @a[tag=spleef_player] invisibility 15 1 true

# applies instant health to all spleef players
execute if score GameState SpleefGlobal matches 2 run effect give @a[tag=spleef_player] saturation 36000 80 true
execute if score GameState SpleefGlobal matches 2 run effect give @a[tag=spleef_player] instant_health 36000 80 true
execute if score GameState SpleefGlobal matches 2 run effect give @a[tag=spleef_player] night_vision 36000 80 true

# Gives players pickaxes
execute if score GameState SpleefGlobal matches 2 run replaceitem entity @a[tag=spleef_player] weapon.mainhand diamond_pickaxe{CanDestroy:["minecraft:coal_block","minecraft:black_concrete","minecraft:obsidian"],HideFlags:63,Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:100s}]}
