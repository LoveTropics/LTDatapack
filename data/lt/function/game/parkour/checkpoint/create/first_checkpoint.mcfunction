# This function should onyl be run to create teh first checkpoint in a parkour course

# Make sure checkpoint makers score is 0 so the first checkpoint starts at 0 
scoreboard players set @s parkour.checkpoint_setup 0

# Create new checkpoint marker then copy the checkpoint makers score to it
summon marker ~ ~ ~ {Tags:["game.parkour.checkpoint","game.parkour.first_checkpoint","game.parkour.checkpoint.new","game.parkour.checkpoint.unclaimed"]}
scoreboard players operation @e[tag=game.parkour.checkpoint.new,limit=1,sort=nearest] parkour.checkpoint_id = @s parkour.checkpoint_setup

tellraw @s [{"text":"Starting checkpoint placed with a 'parkour.checkpoint_id' value of: "},{"score":{"name":"@e[tag=game.parkour.checkpoint.new,limit=1,sort=nearest]","objective":"parkour.checkpoint_id"},"color":"yellow"}]


# Mark it as no longer new
tag @e[tag=game.parkour.checkpoint.new,limit=1,sort=nearest] remove game.parkour.checkpoint.new