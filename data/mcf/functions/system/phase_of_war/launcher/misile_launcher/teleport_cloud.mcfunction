#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MCF_IgnitingMisile"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] MisileUUID0 = @e[tag=MCF_Misile,limit=1] MisileUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] MisileUUID1 = @e[tag=MCF_Misile,limit=1] MisileUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] MisileUUID2 = @e[tag=MCF_Misile,limit=1] MisileUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] MisileUUID3 = @e[tag=MCF_Misile,limit=1] MisileUUID3

## Add a tag
tag @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] add MCF_IgnitedMisile

## Remove tags
tag @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitingMisile,limit=1] remove MCF_IgnitingMisile