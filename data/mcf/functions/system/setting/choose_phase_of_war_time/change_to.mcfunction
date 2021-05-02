#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Clear inventory
clear @p[tag=MCF_Host]

## Play sound
playsound minecraft:ui.button.click master @p[tag=MCF_Host] ~ ~ ~ 1 1 1

## Set scoreboard
scoreboard players operation @p[tag=MCF_Host] Digit0100 = #mcf TimeOfWar
scoreboard players operation @p[tag=MCF_Host] Digit0100 /= #mcf 100
scoreboard players operation @p[tag=MCF_Host] Digit0010 = #mcf TimeOfWar
scoreboard players operation @p[tag=MCF_Host] Digit0010 %= #mcf 100
scoreboard players operation @p[tag=MCF_Host] Digit0010 /= #mcf 10
scoreboard players operation @p[tag=MCF_Host] Digit0001 = #mcf TimeOfWar
scoreboard players operation @p[tag=MCF_Host] Digit0001 %= #mcf 100
scoreboard players operation @p[tag=MCF_Host] Digit0001 %= #mcf 10

## Set inventory
function mcf:system/setting/choose_phase_of_war_time/set_inventory

## Change phase
scoreboard players set #mcf Phase 7