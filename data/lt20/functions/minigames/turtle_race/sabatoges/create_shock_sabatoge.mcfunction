summon tropicraft:man_o_war ~ ~ ~ {NoAI:1b,Tags:["shock_jelly","setup_needed"],CustomName:'[{"text":"Shock in: ","color":"aqua"},{"text":"3","color":"white"}]',CustomNameVisible:1b}
scoreboard players set @e[tag=setup_needed,tag=shock_jelly] TRacePowerupTime 30
tag @e[tag=setup_needed,tag=shock_jelly] remove setup_needed
