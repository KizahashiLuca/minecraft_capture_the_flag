#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Find target
tag @e[type=!#mcf:not_mob,distance=..3,sort=nearest,limit=1] add MCF_LockonTarget

## Set scoreboard
execute as @e[tag=MCF_LockonTarget,limit=1] store result score @s PlayerUUID0 run data get entity @s UUID[0]
execute as @e[tag=MCF_LockonTarget,limit=1] store result score @s PlayerUUID1 run data get entity @s UUID[1]
execute as @e[tag=MCF_LockonTarget,limit=1] store result score @s PlayerUUID2 run data get entity @s UUID[2]
execute as @e[tag=MCF_LockonTarget,limit=1] store result score @s PlayerUUID3 run data get entity @s UUID[3]
scoreboard players operation @p[tag=MCF_DetectLockon] TargetUUID0 = @e[tag=MCF_LockonTarget,limit=1] PlayerUUID0
scoreboard players operation @p[tag=MCF_DetectLockon] TargetUUID1 = @e[tag=MCF_LockonTarget,limit=1] PlayerUUID1
scoreboard players operation @p[tag=MCF_DetectLockon] TargetUUID2 = @e[tag=MCF_LockonTarget,limit=1] PlayerUUID2
scoreboard players operation @p[tag=MCF_DetectLockon] TargetUUID3 = @e[tag=MCF_LockonTarget,limit=1] PlayerUUID3
scoreboard players set @p[tag=MCF_DetectLockon] TargetReset 0

## Particle
execute if entity @e[type=minecraft:area_effect_cloud,tag=MCF_DetectLockon] run particle minecraft:dust 1 0 0 3 ~ ~ ~ 0 0 0 0 0 force @p[tag=MCF_DetectLockon]

## Remove a tag
tag @e[tag=MCF_LockonTarget] remove MCF_LockonTarget

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MCF_DetectLockon]