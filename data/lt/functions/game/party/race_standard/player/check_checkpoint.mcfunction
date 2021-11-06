# Check for completed lap
execute if score @s r.s.p_checkpoint = SETTING.CHECKPOINT_COUNT r.s.global if score @s r.s.p_lap matches 0 if block ~ 0 ~ ltextras:checkpoint[stage=1] run function lt:game/party/race_standard/player/complete_lap/1
execute if score @s r.s.p_checkpoint = SETTING.CHECKPOINT_COUNT r.s.global if score @s r.s.p_lap matches 1 if block ~ 0 ~ ltextras:checkpoint[stage=1] run function lt:game/party/race_standard/player/complete_lap/2

execute if score @s r.s.p_checkpoint matches 0 if block ~ 0 ~ ltextras:checkpoint[stage=1] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 1 if block ~ 0 ~ ltextras:checkpoint[stage=2] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 2 if block ~ 0 ~ ltextras:checkpoint[stage=3] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 3 if block ~ 0 ~ ltextras:checkpoint[stage=4] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 4 if block ~ 0 ~ ltextras:checkpoint[stage=5] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 5 if block ~ 0 ~ ltextras:checkpoint[stage=6] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 6 if block ~ 0 ~ ltextras:checkpoint[stage=7] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 7 if block ~ 0 ~ ltextras:checkpoint[stage=8] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 8 if block ~ 0 ~ ltextras:checkpoint[stage=9] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 9 if block ~ 0 ~ ltextras:checkpoint[stage=10] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 10 if block ~ 0 ~ ltextras:checkpoint[stage=11] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 11 if block ~ 0 ~ ltextras:checkpoint[stage=12] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 12 if block ~ 0 ~ ltextras:checkpoint[stage=13] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 13 if block ~ 0 ~ ltextras:checkpoint[stage=14] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 14 if block ~ 0 ~ ltextras:checkpoint[stage=15] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 15 if block ~ 0 ~ ltextras:checkpoint[stage=16] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 16 if block ~ 0 ~ ltextras:checkpoint[stage=17] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 17 if block ~ 0 ~ ltextras:checkpoint[stage=18] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 18 if block ~ 0 ~ ltextras:checkpoint[stage=19] run function lt:game/party/race_standard/player/pass_checkpoint
execute if score @s r.s.p_checkpoint matches 19 if block ~ 0 ~ ltextras:checkpoint[stage=20] run function lt:game/party/race_standard/player/pass_checkpoint
execute as @s[tag=turtle_race.standard.checkpoint_passed] at @s run function lt:game/party/race_standard/player/fail_checkpoint
tag @s remove turtle_race.standard.checkpoint_passed
