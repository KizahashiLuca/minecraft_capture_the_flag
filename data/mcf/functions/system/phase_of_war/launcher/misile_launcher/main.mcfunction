#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Add tags
tag @s add MCF_MisileCloud
execute as @e[type=minecraft:firework_rocket,tag=MCF_IgnitedMisile] if score @s MisileUUID0 = @e[tag=MCF_MisileCloud,limit=1] MisileUUID0 if score @s MisileUUID1 = @e[tag=MCF_MisileCloud,limit=1] MisileUUID1 if score @s MisileUUID2 = @e[tag=MCF_MisileCloud,limit=1] MisileUUID2 if score @s MisileUUID3 = @e[tag=MCF_MisileCloud,limit=1] MisileUUID3 run tag @s add MCF_Misile
execute as @e[type=!#mcf:not_mob] if score @s PlayerUUID0 = @e[tag=MCF_Misile,limit=1] TargetUUID0 if score @s PlayerUUID1 = @e[tag=MCF_Misile,limit=1] TargetUUID1 if score @s PlayerUUID2 = @e[tag=MCF_Misile,limit=1] TargetUUID2 if score @s PlayerUUID3 = @e[tag=MCF_Misile,limit=1] TargetUUID3 run tag @s add MCF_MisileTarget

## Tracking Target
execute as @e[tag=MCF_Misile,limit=1] run function mcf:system/phase_of_war/launcher/misile_launcher/track_target

## Detect ignited firework_rocket
scoreboard players set @e[tag=MCF_MisileCloud,limit=1] NotExplosive 0

## If firework rocket is alive, it will not explode
execute if entity @e[type=minecraft:firework_rocket,tag=MCF_Misile] run scoreboard players set @e[tag=MCF_MisileCloud,limit=1] NotExplosive 1

## If there are blocks at the end of firework rocket, it will explode
execute as @e[type=minecraft:firework_rocket,tag=MCF_Misile] at @s unless block ^ ^ ^-1 #mcf:air run scoreboard players set @e[tag=MCF_MisileCloud,limit=1] NotExplosive 0
execute as @e[type=minecraft:firework_rocket,tag=MCF_Misile] at @s unless block ^ ^ ^1 #mcf:air run scoreboard players set @e[tag=MCF_MisileCloud,limit=1] NotExplosive 0

## If target player is near by, it will explode
execute as @e[type=minecraft:firework_rocket,tag=MCF_Misile] at @s if entity @e[tag=MCF_MisileTarget,sort=nearest,distance=..1.5] run scoreboard players set @e[tag=MCF_MisileCloud,limit=1] NotExplosive 0

## If shot player is near by, it will not explode
execute as @a if score @e[tag=MCF_MisileCloud,limit=1] PlayerUUID0 = @s PlayerUUID0 if score @e[tag=MCF_MisileCloud,limit=1] PlayerUUID1 = @s PlayerUUID1 if score @e[tag=MCF_MisileCloud,limit=1] PlayerUUID2 = @s PlayerUUID2 if score @e[tag=MCF_MisileCloud,limit=1] PlayerUUID3 = @s PlayerUUID3 run tag @s add MCF_MisileShooter
execute as @p[tag=MCF_MisileShooter,distance=..2] run scoreboard players set @e[tag=MCF_MisileCloud,limit=1] NotExplosive 1

## Explode
execute as @e[tag=MCF_MisileCloud,scores={NotExplosive=0},limit=1] at @s run function mcf:system/phase_of_war/launcher/misile_launcher/explode

## Kill firework rocket
execute as @e[tag=MCF_MisileCloud,scores={NotExplosive=0},limit=1] run kill @e[tag=MCF_Misile]

## Teleport cloud
execute as @e[tag=MCF_MisileCloud,scores={NotExplosive=1},limit=1] at @e[tag=MCF_Misile,limit=1] run function mcf:system/phase_of_war/launcher/misile_launcher/teleport_cloud

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MCF_MisileCloud]

## Remove a tag
tag @e[tag=MCF_Misile] remove MCF_Misile
tag @e[tag=MCF_MisileTarget] remove MCF_MisileTarget
tag @e[tag=MCF_MisileShooter] remove MCF_MisileShooter