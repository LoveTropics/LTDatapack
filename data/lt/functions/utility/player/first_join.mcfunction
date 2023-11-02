tag @s add utility.player.joined
execute in tropicraft:tropics run tp @s 2335 131 2403 -90 0
execute in tropicraft:tropics run spawnpoint @s 2335 131 2403

# Add every tag applied at first join
tag @s add utility.player.introduced
tag @s add utility.spawn_island.joined
tag @s add utility.player.joined
tag @s add utility.player.really_has_drink
tag @s add utility.player.has_drink

# Reset scores
scoreboard players reset @s spawn_island.skip_time
scoreboard players reset @s spawn_island.time

effect clear @s
execute as @s at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 1 1.5
# LT23 join functions:

title @s times 15 135 15
title @s title {"translate":"lt.utility.first_join.title","color":"yellow"}
title @s subtitle [{"translate":"lt.utility.first_join.subtitle.1","color":"#F97400"},{"text":" ❤ ","color":"red"},{"translate":"lt.utility.first_join.subtitle.2","color":"green"}]
execute as @s at @s positioned 213.38 177.00 243.35 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"        "},{"text":"","color":"#00718E"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"        "},{"translate":"lt.utility.first_join.message.1","color":"yellow"}]
tellraw @s [{"text":"| ","color":"dark_gray"},{"text":"        "},{"translate":"lt.utility.first_join.title","color":"#5ebfa1"},{"text":" ❤ ","color":"red"},{"translate":"lt.utility.first_join.message.2","color":"green"}]
tellraw @s [{"text":"| ","color":"dark_gray"}]

give @s ltextras:tropicoin 10
#give @s written_book{author:"http://minecraft.tools/Momibelle",display:{},pages:['["",{"text":"Welcome to \\nLove Tropics 2022 ","bold":true,"color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"supporting\\nProject Seagrass\\nthis year!","bold":true},{"text":"\\nThank you for\\njoining us.","color":"reset"},{"text":" \\n\\n\\n\\n-> "},{"text":"read more!","italic":true}]','["",{"text":"WHERE AM I?","italic":true},{"text":"\\nYou\\u2019ll find a teleport map down the waterway/pathway that\'ll take you to places here in the overworld like the Seagrass Institute of Research highlighting ten seagrasses that appear throughout our real world... ","color":"reset"}]','["",{"text":"(con\'t)","italic":true},{"text":"\\n...or head to the Banyan Tree elytra jump for a spectacular fly over our island atolls.\\n\\u2708\\n\\n\\n\\n ","color":"reset"}]','["",{"text":"It\\u2019s important to remember","bold":true},{"text":" our in-game \\u2018etiquette\\u2019 here on Love Tropics. Please do not share personal information about yourself. Happen to come across a Mojangsta? Please don\\u2019t ask them about future features (or otherwise) in our game.","color":"reset"}]','["",{"text":"\\n"},{"text":"Met one of your\\nfav YouTubers?","bold":true},{"text":" Awesome! They are here to have fun (like you!) and help us raise ","color":"reset"},{"text":"FUN","bold":true},{"text":"ds! So please be respectful of their\\nin-game \'space\'.","color":"reset"}]','["",{"text":"COMMANDS","bold":true},{"text":"\\n\'Build mode\' can be toggled on and off by pressing \\u2018b\\u2019 by default, and there will be areas where you can contribute your creative builds!\\n ","color":"reset"}]','["",{"text":"\\n"},{"text":"Want to join in a minigame? ","bold":true},{"text":"Watch for the prompts! Some of the lobbies may fill quickly, you can always choose to spectate.\\n\\n ","color":"reset"}]','["",{"text":"Again, "},{"text":"thank you\\nso much for donating! ","bold":true},{"text":"Now it\'s time to explore, play, build and learn a bit more about how YOU can help seagrass restoration and conservation around the world!\\n","color":"reset"},{"text":"\\u2764","bold":true},{"text":"\\n","color":"reset"},{"text":"-Momibelle","bold":true}]'],title:"Welcome to Love Tropics '22"}