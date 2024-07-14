# Feedback
#playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1
tellraw @s [{"translate":"lt.game.parkour.general.message.left"},{"translate":"lt.game.parkour.crystal_cave.name"},{"translate":"lt.game.parkour.general.message.parkour_course"}]

title @s actionbar " "

tag @s remove parkour.crystal_cave
tag @s remove parkour.player
tag @s remove parkour.player.looking_for_checkpoint

# Set players stored from checkpoint
scoreboard players operation @s parkour.crystal.checkpoint_last = @s parkour.checkpoint
scoreboard players reset @s parkour.checkpoint

execute unless entity @s[gamemode=spectator] run collectible unlock @s
