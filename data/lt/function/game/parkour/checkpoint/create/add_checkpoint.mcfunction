# This function can be re-ran for as many checkpoints are needed in a pakrour course, after lt:game/parkour/checkpoint/first_checkpoint has been ran

# Incremement checkpoint makers setup score by 1
scoreboard players add @s parkour.checkpoint_setup 1

# Create new checkpoint marker then copy the checkpoint makers score to it
summon marker ~ ~ ~ {Tags:["game.parkour.checkpoint","game.parkour.checkpoint.new","game.parkour.checkpoint.unclaimed"]}
scoreboard players operation @e[tag=game.parkour.checkpoint.new,limit=1,sort=nearest] parkour.checkpoint_id = @s parkour.checkpoint_setup

tellraw @s [{"text":"Checkpoint placed with a 'parkour.checkpoint_id' value of: "},{"score":{"name":"@e[tag=game.parkour.checkpoint.new,limit=1,sort=nearest]","objective":"parkour.checkpoint_id"},"color":"yellow"}]

# Mark it as no longer new
tag @e[tag=game.parkour.checkpoint.new,limit=1,sort=nearest] remove game.parkour.checkpoint.new
