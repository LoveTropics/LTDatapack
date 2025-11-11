scoreboard objectives add global.utility dummy
tag @a[role=live,role=!river_race_blue,limit=1] add p_host_01
tag @a[role=live,tag=!p_host_01,role=!river_race_blue,limit=1] add p_host_02
tag @a[role=live,tag=!p_host_01,tag=!p_host_02,role=!river_race_blue,limit=1] add p_host_03
tag @a[role=live,tag=!p_host_01,tag=!p_host_02,tag=!p_host_03,role=!river_race_red,limit=1] add p_host_04
tag @a[role=live,tag=!p_host_01,tag=!p_host_02,tag=!p_host_03,tag=!p_host_04,role=!river_race_red,limit=1] add p_host_05
tag @a[role=live,tag=!p_host_01,tag=!p_host_02,tag=!p_host_03,tag=!p_host_04,tag=!p_host_05,limit=1,!river_race_red] add p_host_06
execute as @e[tag=host_1] run function lt:utility/dummy_players/set_from_player with entity @p[tag=p_host_01]
execute as @e[tag=host_2] run function lt:utility/dummy_players/set_from_player with entity @p[tag=p_host_01]
execute as @e[tag=host_2] run function lt:utility/dummy_players/set_from_player with entity @p[tag=p_host_02]
execute as @e[tag=host_3] run function lt:utility/dummy_players/set_from_player with entity @p[tag=p_host_03]
execute as @e[tag=host_4] run function lt:utility/dummy_players/set_from_player with entity @p[tag=p_host_04]
execute as @e[tag=host_5] run function lt:utility/dummy_players/set_from_player with entity @p[tag=p_host_05]
execute as @e[tag=host_6] run function lt:utility/dummy_players/set_from_player with entity @p[tag=p_host_06]
tag @a remove p_host_01
tag @a remove p_host_02
tag @a remove p_host_03
tag @a remove p_host_04
tag @a remove p_host_05
tag @a remove p_host_06
execute as @e[tag=hostDummy] at @s run function lt:utility/hosts/easter_eggs
