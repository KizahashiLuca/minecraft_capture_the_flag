#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MCF_IgnitingRocket"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingRocket,limit=1] RocketUUID0 = @s RocketUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingRocket,limit=1] RocketUUID1 = @s RocketUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingRocket,limit=1] RocketUUID2 = @s RocketUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingRocket,limit=1] RocketUUID3 = @s RocketUUID3

## Add a tag
tag @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingRocket,limit=1] add MCF_IgnitedRocket

## Remove tags
tag @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingRocket,limit=1] remove MCF_IgnitingRocket