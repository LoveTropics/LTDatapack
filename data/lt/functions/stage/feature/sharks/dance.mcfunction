execute if score @s stage.shark matches 80 run data merge entity @s {Pose:{Head:[343f,348f,0f],LeftArm:[283f,328f,0f],RightArm:[234f,50f,360f]}}
execute if score @s stage.shark matches 70 run data merge entity @s {Pose:{Head:[343f,305f,0f],LeftArm:[226f,328f,0f],RightArm:[281f,50f,360f]}}
execute if score @s stage.shark matches 60 run data merge entity @s {Pose:{Head:[4f,340f,0f],LeftArm:[316f,328f,0f],RightArm:[194f,50f,360f]}}
execute if score @s stage.shark matches 50 run data merge entity @s {Pose:{Head:[47f,340f,0f],LeftArm:[161f,328f,0f],RightArm:[167f,50f,360f]}}
execute if score @s stage.shark matches 40 run data merge entity @s {Pose:{Head:[330f,0f,0f],LeftArm:[296f,0f,0f],RightArm:[294f,0f,0f]}}
execute if score @s stage.shark matches 30 run data merge entity @s {Pose:{Head:[345f,32f,0f],LeftArm:[234f,307f,0f],RightArm:[292f,42f,0f]}}
execute if score @s stage.shark matches 20 run data merge entity @s {Pose:{Head:[0f,324f,0f],LeftArm:[318f,307f,0f],RightArm:[226f,42f,0f]}}
execute if score @s stage.shark matches 10 run data merge entity @s {Pose:{Head:[337f,0f,0f],LeftArm:[220f,307f,0f],RightArm:[226f,42f,0f]}}

scoreboard players remove @s stage.shark 2 