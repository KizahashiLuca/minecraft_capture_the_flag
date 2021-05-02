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
title @a title ["",{"text":"War Start","color":"white"}]
title @a times 20 80 20

## Send setting messages
function mcf:system/common/message_begin
tellraw @a ["",{"text":" War Start","color":"red","bold":true}]
tellraw @a ["",{"text":"   注意","color":"red","bold":true}]
tellraw @a ["",{"text":"   ・フラッグの再設置禁止","color":"red","bold":false}]
tellraw @a ["",{"text":"   ・フラッグのチェスト保管禁止","color":"red","bold":false}]
function mcf:system/common/message_end

## Set player
clear @a minecraft:bat_spawn_egg{Tags:["MCFitem"]}
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

scoreboard players set #mcf_red StolenFlag 0
scoreboard players set #mcf_blue StolenFlag 0

scoreboard players set @a[tag=MCF_Player] UseCrossbow 0

## Change phase
scoreboard players reset #mcf_red Phase
scoreboard players reset #mcf_blue Phase
scoreboard players set #mcf Phase 60