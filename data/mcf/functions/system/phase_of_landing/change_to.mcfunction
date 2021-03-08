#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Send title messages
title @a title ["",{"text":"Landing","color":"white"}]
title @a times 20 80 20

## Send setting messages
function mcf:system/common/message_begin
function mcf:system/phase_of_landing/tell_member
function mcf:system/common/message_end

## Set scoreboard
scoreboard players set @a OnGround 0

## Teleport
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] run function mcf:system/phase_of_landing/random_teleport_team_a
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_WorldSpawn,limit=1] run function mcf:system/phase_of_landing/random_teleport_team_b
execute as @a[tag=MCF_Player] at @s run tp @s ~ 160 ~

## Change phase
scoreboard players set #mcf Phase 30