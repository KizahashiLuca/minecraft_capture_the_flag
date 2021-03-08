#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set scoreboard
scoreboard players set @s OnGround 2

## Clear effect
effect clear @s minecraft:slow_falling

## Add a tag
tag @s add MCF_Teleporter

## Teleport
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MCF_Teleporter","MCF_NotSet"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_Teleporter,tag=MCF_NotSet] run scoreboard players operation @s PlayerNumber = @p[tag=MCF_Player,tag=MCF_Teleporter] PlayerNumber
tag @e[type=minecraft:area_effect_cloud,tag=MCF_Teleporter,tag=MCF_NotSet,scores={PlayerNumber=1..}] remove MCF_NotSet

## Remove a tag
tag @p[tag=MCF_Player,tag=MCF_Teleporter] remove MCF_Teleporter