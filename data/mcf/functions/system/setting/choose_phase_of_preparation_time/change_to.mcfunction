#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Clear inventory
clear @p[tag=MCF_Host]

## Play sound
playsound minecraft:ui.button.click master @p[tag=MCF_Host] ~ ~ ~ 1 1 1

## Set scoreboard
scoreboard players operation @p[tag=MCF_Host] digit_0100 = #mcf TimeOfPrepare
scoreboard players operation @p[tag=MCF_Host] digit_0100 /= #mcf 100
scoreboard players operation @p[tag=MCF_Host] digit_0010 = #mcf TimeOfPrepare
scoreboard players operation @p[tag=MCF_Host] digit_0010 %= #mcf 100
scoreboard players operation @p[tag=MCF_Host] digit_0010 /= #mcf 10
scoreboard players operation @p[tag=MCF_Host] digit_0001 = #mcf TimeOfPrepare
scoreboard players operation @p[tag=MCF_Host] digit_0001 %= #mcf 100
scoreboard players operation @p[tag=MCF_Host] digit_0001 %= #mcf 10

## Set inventory
function mcf:system/setting/choose_phase_of_preparation_time/set_inventory

## Change phase
scoreboard players set #mcf Phase 6