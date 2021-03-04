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

## Set inventory
function mcf:system/setting/choose_team_setting/set_inventory

## Change phase
scoreboard players set #mcf Phase 8