$tellraw @s {"text":"[","color":"gray","extra":[{"translate":"lt.milestone.milestone","color":"gold"},{"text":"] ","color":"gray"},{"translate":"lt.milestone.unlocked_message","with":[{"translate":"$(key)"}]}]}
$tag @s add $(tag)
$scoreboard players add $(stat) main.stats 1

