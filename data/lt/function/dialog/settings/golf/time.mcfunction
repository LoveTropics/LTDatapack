scoreboard objectives add global.storage dummy
$scoreboard players set golf.crab.mode global.storage $(golf_mode)
$say Golf Time Set To $(golf_time)! Seconds!
execute if score golf.crab.mode global.storage matches 1 run say Golf Mode Set To: Normal
execute if score golf.crab.mode global.storage matches 2 run say Golf Mode Set To: Host Mode
execute if score golf.crab.mode global.storage matches 4 run say Golf Mode Set To: Gegy Potato
execute if score golf.crab.mode global.storage matches 4 run say Golf Mode Set To: Gold
