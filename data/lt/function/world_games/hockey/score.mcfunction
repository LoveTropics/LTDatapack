$say $(team) scored
$scoreboard players add $(team) game.hockey 1
function lt:world_games/hockey/spawn_crab
kill @s
execute as @a[team=hockey] at @s run playsound minecraft:item.goat_horn.sound.0 voice @s ~ ~ ~ 5 1 1
$function lt:world_games/hockey/team/firework/$(team)