##
# complete function for the cents_intro quest.
##

## Remove Quest Tags
tag @s remove in_quest.cents_intro
##

## Quest Data
data modify gamedata lt:quest/data/cents_intro @s[type=player] stage set value -1
##

## Per-quest custom functionality.