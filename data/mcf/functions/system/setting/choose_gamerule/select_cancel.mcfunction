#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Reset choice
scoreboard players operation #mcf WeatherCycle = #mcf WeatherCyclePrv
scoreboard players operation #mcf DaylightCycle = #mcf DaylightCyclePrv
scoreboard players operation #mcf DoNightVision = #mcf DoNightVisionPrv

## Send messages
function mcf:system/setting/choose_gamerule/send_message