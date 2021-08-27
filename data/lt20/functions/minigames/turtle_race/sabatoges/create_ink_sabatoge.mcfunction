summon minecraft:squid ~ ~ ~ {NoAI:1b,Tags:["ink_bomb","setup_needed"],CustomName:'[{"text":"Ink Bomb","color":"black"}]',CustomNameVisible:1b}
scoreboard players set @e[tag=setup_needed,tag=ink_bomb] TRacePowerupTime 20
tag @e[tag=setup_needed,tag=ink_bomb] remove setup_needed
