#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Add scoreboard
scoreboard objectives add friendlyFireTmp dummy

## Change friendlyFire
execute if score #mcf friendlyFire matches 1 run scoreboard players set #mcf friendlyFireTmp 0
execute if score #mcf friendlyFire matches 0 run scoreboard players set #mcf friendlyFireTmp 1

scoreboard players operation #mcf friendlyFire = #mcf friendlyFireTmp

## Remove scoreboard
scoreboard objectives remove friendlyFireTmp

## Set inventory
function mcf:system/setting/choose_team_setting/change_to