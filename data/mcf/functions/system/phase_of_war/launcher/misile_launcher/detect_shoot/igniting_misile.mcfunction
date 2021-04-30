#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set scoreboard
execute store result score @s MisileUUID0 run data get entity @s UUID[0]
execute store result score @s MisileUUID1 run data get entity @s UUID[1]
execute store result score @s MisileUUID2 run data get entity @s UUID[2]
execute store result score @s MisileUUID3 run data get entity @s UUID[3]
data modify entity @s LifeTime set value 1000

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MCF_IgnitingMisile"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] MisileUUID0 = @s MisileUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] MisileUUID1 = @s MisileUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] MisileUUID2 = @s MisileUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] MisileUUID3 = @s MisileUUID3
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] TargetUUID0 = @s TargetUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] TargetUUID1 = @s TargetUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] TargetUUID2 = @s TargetUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] TargetUUID3 = @s TargetUUID3

## Add a tag
tag @s add MCF_IgnitedMisile
tag @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] add MCF_IgnitedMisile

## Remove tags
tag @s remove MCF_IgnitingMisile
tag @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] remove MCF_IgnitingMisile