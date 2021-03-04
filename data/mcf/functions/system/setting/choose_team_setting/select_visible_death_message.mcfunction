#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Add scoreboard
scoreboard objectives add VisibleDeathTmp dummy

## Change VisibleDeath
execute if score #mcf VisibleDeath matches 1 run scoreboard players set #mcf VisibleDeathTmp 0
execute if score #mcf VisibleDeath matches 0 run scoreboard players set #mcf VisibleDeathTmp 1

scoreboard players operation #mcf VisibleDeath = #mcf VisibleDeathTmp

## Remove scoreboard
scoreboard objectives remove VisibleDeathTmp

## Set inventory
function mcf:system/setting/choose_team_setting/change_to