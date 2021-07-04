#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
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
execute at @e[predicate=mcf:common/spawnpoint/world_spawn] run function mcf:system/phase_of_landing/random_teleport_team_a
execute at @e[predicate=mcf:common/spawnpoint/world_spawn] run function mcf:system/phase_of_landing/random_teleport_team_b
execute as @a[predicate=mcf:common/player] at @s run tp @s ~ 160 ~

## Change phase
scoreboard players set #mcf Phase 30