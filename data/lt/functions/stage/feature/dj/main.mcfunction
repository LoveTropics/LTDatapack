execute as @e[tag=stage.dj,limit=1] at @s if score anim_state stage.dj matches 1 if score @s stage.dj matches 2.. run function lt:stage/feature/dj/animation/dance
execute as @e[tag=stage.dj,limit=1] at @s if score anim_state stage.dj matches 2 if score @s stage.dj matches 2.. run function lt:stage/feature/dj/animation/double_turn
execute as @e[tag=stage.dj,limit=1] at @s if score anim_state stage.dj matches 3 if score @s stage.dj matches 2.. run function lt:stage/feature/dj/animation/point
execute as @e[tag=stage.dj,limit=1] at @s if score anim_state stage.dj matches 4 if score @s stage.dj matches 2.. run function lt:stage/feature/dj/animation/turn
execute as @e[tag=stage.dj,limit=1] at @s if score @s stage.dj matches 1 if score anim_state stage.dj matches 1 run function lt:stage/feature/dj/animation/double_turn_activate
execute as @e[tag=stage.dj,limit=1] at @s if score @s stage.dj matches 1 if score anim_state stage.dj matches 2 run function lt:stage/feature/dj/animation/point_activate
execute as @e[tag=stage.dj,limit=1] at @s if score @s stage.dj matches 1 if score anim_state stage.dj matches 3 run function lt:stage/feature/dj/animation/turn_activate
execute as @e[tag=stage.dj,limit=1] at @s if score @s stage.dj matches 1 if score anim_state stage.dj matches 4 run function lt:stage/feature/dj/animation/dance_activate