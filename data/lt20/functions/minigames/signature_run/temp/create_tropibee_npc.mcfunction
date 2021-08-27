tag @s add SigRunNPCMarker
data merge entity @s {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b}
summon tropicraft:tropibee ~ ~1 ~ {Tags:["SigRunNPC","SignatureNPC"],Invulnerable:1b,PersistenceRequired:1b,Attributes:[{Base:0.0d,Name:"generic.flyingSpeed"},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],NoGravity:1b}
