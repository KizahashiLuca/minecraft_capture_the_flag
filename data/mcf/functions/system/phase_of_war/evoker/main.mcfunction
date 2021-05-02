#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set scoreboard
scoreboard players set @e[type=minecraft:evoker] VexSpawn 0

## Add a tag to vex
execute as @e[type=minecraft:vex,tag=!MCF_VexTeamed] at @s run function mcf:system/phase_of_war/evoker/join_team