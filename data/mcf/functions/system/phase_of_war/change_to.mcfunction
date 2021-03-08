#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Send title messages
title @a title ["",{"text":"War Start","color":"white"}]
title @a times 20 80 20

## Send setting messages
function mcf:system/common/message_begin
tellraw @a ["",{"text":"War Start","color":"red","bold":true}]
function mcf:system/common/message_end

## Set player
gamemode survival @a[tag=MCF_Player]
## Set gamerule
function mcf:system/phase_of_war/set_gamerule
## Set bossbar
function mcf:system/phase_of_war/set_bossbar
## Set world
function mcf:system/phase_of_war/set_world
## Set wall
function mcf:system/phase_of_war/set_wall

## Set scoreboards
scoreboard players set #mcf Tick 20
scoreboard players set #mcf Second 0
scoreboard players operation #mcf Minute = #mcf TimeOfWar

## Change phase
scoreboard players reset #mcf_red Phase
scoreboard players reset #mcf_blue Phase
scoreboard players set #mcf Phase 60