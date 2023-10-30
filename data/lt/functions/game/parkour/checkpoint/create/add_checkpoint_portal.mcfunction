# Make centering leash_knot
summon leash_knot ~ ~ ~ {Tags:["game.parkour.center"]}

# Create new checkpoint marker then copy the checkpoint makers score to it
execute at @e[tag=game.parkour.center,sort=nearest,limit=1] run summon marker ~ ~ ~ {Tags:["game.parkour.checkpoint_portal","game.parkour.checkpoint.unclaimed"]}
kill @e[tag=game.parkour.center]

tellraw @s [{"text":"Checkpoint portal placed"}]
