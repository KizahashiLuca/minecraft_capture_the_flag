#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Add scoreboard
scoreboard objectives add VisibleInvisTmp dummy

## Change VisibleInvis
execute if score #mcf VisibleInvis matches 1 run scoreboard players set #mcf VisibleInvisTmp 0
execute if score #mcf VisibleInvis matches 0 run scoreboard players set #mcf VisibleInvisTmp 1

scoreboard players operation #mcf VisibleInvis = #mcf VisibleInvisTmp

## Remove scoreboard
scoreboard objectives remove VisibleInvisTmp

## Set inventory
function mcf:system/setting/choose_team_setting/change_to