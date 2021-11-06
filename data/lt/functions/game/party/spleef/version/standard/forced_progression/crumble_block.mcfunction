summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:100,Age:0,Tags:["game.party.spleef.block_crumbler","game.party.spleef.block_crumbler.new"]}
scoreboard players set @e[tag=game.party.spleef.block_crumbler.new,limit=1,sort=nearest,distance=..2] s.crumbe_time 0
tag @e[tag=game.party.spleef.block_crumbler.new,limit=1,sort=nearest,distance=..2] remove game.party.spleef.block_crumbler.new