# Feedback
#playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1
execute unless entity @s[gamemode=spectator] run tellraw @s [{"translate":"lt.game.parkour.general.message.entered"},{"translate":"lt.game.parkour.crystal_cave.name"},{"translate":"lt.game.parkour.general.message.parkour_course"}]
execute if entity @s[gamemode=spectator] run tellraw @s [{"translate":"lt.game.parkour.general.message.wrong_gamemode","color":"yellow"}]

execute unless entity @s[gamemode=spectator] run function lt:game/parkour/map/test_for_items
execute unless entity @s[gamemode=spectator] run tag @s add parkour.crystal_cave
execute unless entity @s[gamemode=spectator] run tag @s add parkour.player

# Set players checkpoint from stored
execute unless entity @s[gamemode=spectator] run scoreboard players set @s parkour.checkpoint 0
execute unless entity @s[gamemode=spectator] run scoreboard players operation @s parkour.checkpoint = @s parkour.crystal.checkpoint_last
