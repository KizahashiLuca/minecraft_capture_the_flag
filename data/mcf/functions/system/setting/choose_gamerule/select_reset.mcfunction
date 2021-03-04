#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Reset choice
scoreboard players set #mcf WeatherCycle 1
scoreboard players set #mcf DaylightCycle 1

## Send messages
function mcf:system/setting/choose_gamerule/change_to