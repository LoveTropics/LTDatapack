scoreboard objectives add golf.01.scores dummy "Hole 1"
scoreboard objectives add golf.02.scores dummy "Hole 2"
scoreboard objectives add golf.03.scores dummy "Hole 3"
scoreboard objectives add golf.04.scores dummy "Hole 4"
scoreboard objectives add golf.05.scores dummy "Hole 5"
scoreboard objectives add golf.06.scores dummy "Hole 6"
scoreboard objectives add golf.07.scores dummy "Hole 7"
scoreboard objectives add golf.08.scores dummy "Hole 8"
scoreboard objectives add golf.09.scores dummy "Hole 9"
scoreboard objectives add golf.10.scores dummy "Hole 10"
scoreboard objectives add golf.11.scores dummy "Hole 11"
scoreboard objectives add golf.12.scores dummy "Hole 12"
scoreboard objectives add golf.13.scores dummy "Hole 13"
scoreboard objectives add golf.14.scores dummy "Hole 14"
scoreboard objectives add golf.15.scores dummy "Hole 15"
scoreboard objectives add golf.16.scores dummy "Hole 16"
scoreboard objectives add golf.17.scores dummy "Hole 17"
scoreboard objectives add golf.18.scores dummy "Hole 18"
scoreboard objectives add golf.global dummy "Golf Global"
scoreboard players set maxTime golf.global 120
team add antiCrabCollision "Anti Crab Collision"
team modify antiCrabCollision collisionRule never
team modify antiCrabCollision color aqua
function lt:game/minigolf/debug/reset_scores