#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set preview choice
scoreboard players operation #mcf WeatherCyclePrv = #mcf WeatherCycle
scoreboard players operation #mcf DaylightCyclePrv = #mcf DaylightCycle

## Send messages
function mcf:system/setting/choose_gamerule/send_message