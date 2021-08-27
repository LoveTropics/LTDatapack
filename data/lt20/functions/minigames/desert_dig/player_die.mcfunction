tp @s -737 129 2624
title @s times 5 40 5
title @s title {"text":"You Died","color":"red"}
title @s subtitle {"text":"You have respawned and lost 5 score.","color":"gray"}
scoreboard players remove @s digsitescore 5
scoreboard players set @s[scores={digsitescore=..0}] digsitescore 0
playsound minecraft:entity.generic.burn master @s
effect give @s instant_health 5 5 true
