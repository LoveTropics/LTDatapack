##
# begin function for the cents_intro quest.
##

## Quest Tags
tag @s add in_quest.no_cents_intro
##

## Quest Data
data merge gamedata lt:quest/data/no_cents_intro @s[type=player] {stage:0,quest_id:"no_cents_intro"}
##

## Per-quest custom functionality.

# set random delay before quest starts fr
execute store result score @s quest.no_cents_intro_delay run random value 8000..18000