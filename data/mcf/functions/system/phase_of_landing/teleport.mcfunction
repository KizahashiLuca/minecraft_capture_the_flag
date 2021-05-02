#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Add a tag
tag @s add MCF_Teleporter

## Teleport
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_Teleporter] at @s if score @s PlayerNumber = @p[tag=MCF_Player,tag=MCF_Teleporter] PlayerNumber run tp @p[tag=MCF_Player,tag=MCF_Teleporter] ~ ~ ~

## Remove a tag
tag @p[tag=MCF_Player,tag=MCF_Teleporter] remove MCF_Teleporter