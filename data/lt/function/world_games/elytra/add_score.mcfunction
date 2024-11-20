$execute if entity @s[tag=!world_game.elytra.checkpoint_$(checkpoint)] run scoreboard players add @s world_game.elytra.tracker 1
$tag @s add world_game.elytra.checkpoint_$(checkpoint)
$tell @s "Checkpoint $(checkpoint)!"
playsound minecraft:block.note_block.chime