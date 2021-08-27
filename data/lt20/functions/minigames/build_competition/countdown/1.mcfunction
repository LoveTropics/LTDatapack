execute as @a[tag=build_competition_builder] at @s run playsound minecraft:block.note_block.bell master @s
title @a[tag=build_competition_builder] title [{"text":"⇨1⇦","color":"red","bold":true}]
schedule function lt20:minigames/build_competition/end_build_phase 20t
