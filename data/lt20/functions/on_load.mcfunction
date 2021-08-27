# Map Board OBJ's + Teams
team add noCollision
team modify noCollision collisionRule never

# Info Area OBJ's
scoreboard objectives setdisplay sidebar InfoDamageTrack

# Volcano Spleef OBJ's
scoreboard objectives add SpleefGlobal dummy
scoreboard objectives add SpleefYTrack dummy
scoreboard objectives add UnstableKDelay dummy
scoreboard players set GameState SpleefGlobal 0
scoreboard players set Players SpleefGlobal 0
scoreboard players set EffectSpeed SpleefGlobal 0
scoreboard players set EffectJump SpleefGlobal 0
scoreboard players set EffectSlow SpleefGlobal 0
scoreboard players set EffectBlind SpleefGlobal 0
scoreboard players set EffectInvis SpleefGlobal 0
scoreboard players set EffectSuperPick SpleefGlobal 0
scoreboard players set GameStage SpleefGlobal 0

# Signature Run OBJ's
scoreboard objectives add SignatureGlobal dummy
scoreboard objectives add SignatureMath dummy
scoreboard objectives add PlayerSigs dummy
scoreboard objectives add NPCSigs dummy
scoreboard objectives add SigStats dummy [{"text":"Signature","color":"green","bold":true},{"text":" Run","color":"dark_green"}]
scoreboard objectives add OnSigOhNo dummy
scoreboard objectives add OnSigDisaster dummy
scoreboard objectives add PersonalSigs dummy
scoreboard objectives add LogBroken dummy
scoreboard objectives add ToolSlot1 dummy
scoreboard objectives add ToolSlot2 dummy
scoreboard objectives add ToolSlotSpecial dummy
team add SigRunCollision
team add HasSignature
team add NoSignature

team modify SigRunCollision collisionRule never
team modify HasSignature suffix {"text":"1+","color":"green"}
team modify NoSignature suffix {"text":"0","color":"red"}
team modify HasSignature collisionRule never
team modify NoSignature collisionRule never

scoreboard players set Value OnSigOhNo 0
scoreboard players set Value OnSigDisaster 0
scoreboard players set GameState SignatureGlobal 0
scoreboard players set GameStage SignatureGlobal 0
scoreboard players set TotalSigs SignatureGlobal 0
scoreboard players set TotalViolations SignatureGlobal 0
scoreboard players set TotalPlayers SignatureGlobal 0
scoreboard players set ReadyPlayers SignatureGlobal 0
scoreboard players set SecsLeft SignatureGlobal 0
scoreboard players set MinutesLeft SignatureGlobal 0
scoreboard players set SecsMinusMins SignatureGlobal 0
scoreboard players set TickCount SignatureGlobal 0
scoreboard players set 60 SignatureMath 60
scoreboard players set MinutesMultiplied SignatureMath 0
scoreboard players set PreviousOhNo SignatureGlobal 0

# Server handlers OBJ's
scoreboard objectives add moveCount minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add runCount minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add flyCount minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add sneakCount minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add swimCount minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add idleTrack dummy

# treasure hunt X OBJ's
scoreboard objectives add DigsiteGlobal dummy
scoreboard objectives add Digsite dummy
scoreboard objectives add digsiteSilver dummy
scoreboard objectives add digsiteHealth health
scoreboard objectives add digsitescore dummy {"text":"DigSite - Scores","color":"gold","bold":true}
scoreboard objectives modify digsitescore displayname {"text":"DigSite - Scores","color":"gold","bold":true}
scoreboard objectives add rngDD dummy
#scoreboard players set GameState DigsiteGlobal 0

# Build competition OBJ's
scoreboard objectives add BuildGlobal dummy
scoreboard objectives add PlayerPlotID dummy
scoreboard objectives add MarkerPlotID dummy
#scoreboard objectives add BuildStoreID dummy
bossbar add build_themetime [{"text":"Theme: ","color":"yellow"},{"text":"Tree House","color":"dark_green","bold":true}]
bossbar add build_viewervote [{"text":"The viewers are now voting on the winner!","color":"gold","bold":true}]
bossbar add build_judgevote [{"text":"The judges are now picking their finalists!","color":"aqua","bold":true}]
#team add BuildFinalist1
#team add BuildFinalist2
#team add BuildFinalist3

#scoreboard players set GameState BuildGlobal 0
#scoreboard players set Theme BuildGlobal 0
#scoreboard players set TimeRemaining BuildGlobal 0
scoreboard players set DefaultTime BuildGlobal 12000
scoreboard players set 1200Math BuildGlobal 1200
#bossbar set minecraft:build_themetime color red
#bossbar set minecraft:build_themetime visible true
#bossbar set minecraft:build_themetime players
bossbar set minecraft:build_viewervote color yellow
bossbar set minecraft:build_viewervote visible true
bossbar set minecraft:build_viewervote max 1
bossbar set minecraft:build_viewervote value 1
bossbar set minecraft:build_viewervote players
bossbar set minecraft:build_judgevote color blue
bossbar set minecraft:build_judgevote visible true
bossbar set minecraft:build_judgevote max 1
bossbar set minecraft:build_judgevote value 1
bossbar set minecraft:build_judgevote players
forceload add -1218 2551

# Turtle race OBJ's
scoreboard objectives add TRaceRocketTrack dummy
scoreboard objectives add TRaceGlobal dummy
scoreboard objectives add TRacePlayerS dummy
scoreboard objectives add TRacePlayerM dummy
scoreboard objectives add TRacePlayerStage dummy
scoreboard objectives add TRacePlayerPlace dummy
scoreboard objectives add TRaceSpeedTime dummy
scoreboard objectives add TRacePowerupTime dummy
scoreboard objectives add TRaceGiveTime dummy
scoreboard objectives add TRaceSlowAura dummy
scoreboard objectives add TRaceShockTime dummy
scoreboard objectives add TRaceSlowTime dummy
scoreboard objectives add TRaceFailTime dummy
scoreboard objectives add TRaceCheckDelay dummy

#scoreboard players set GameState TRaceGlobal 0
#scoreboard players set FinishedPlayers TRaceGlobal 0
#scoreboard players set Mode TRaceGlobal 1
#scoreboard players set HoldTurtles TRaceGlobal 0
#scoreboard players set 60Math TRaceGlobal 60
#
#scoreboard players set SecsMinusMins TRaceGlobal 0
#scoreboard players set Mins TRaceGlobal 0
#scoreboard players set Secs TRaceGlobal 0
#scoreboard players set MinsMultiplied TRaceGlobal 0
#scoreboard players set TickCount TRaceGlobal 0
scoreboard objectives setdisplay sidebar
