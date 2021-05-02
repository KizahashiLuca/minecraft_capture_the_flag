#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Add tags
tag @s add MCF_VexTeamed
tag @e[type=minecraft:evoker,scores={VexSpawn=..2},sort=nearest,limit=1] add MCF_VexTeamSrc

## Join team
execute if entity @e[type=minecraft:evoker,tag=MCF_VexTeamSrc,team=TeamA] run team join TeamA @s
execute if entity @e[type=minecraft:evoker,tag=MCF_VexTeamSrc,team=TeamB] run team join TeamB @s

## Set scoreboard
scoreboard players add @e[type=minecraft:evoker,tag=MCF_VexTeamSrc] VexSpawn 1

## Remove a tag
tag @e[type=minecraft:evoker] remove MCF_VexTeamSrc