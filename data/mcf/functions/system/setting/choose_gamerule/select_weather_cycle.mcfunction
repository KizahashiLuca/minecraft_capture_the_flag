#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Add scoreboard
scoreboard objectives add WeatherCycleTmp dummy

## Change WeatherCycle
execute if score #mcf WeatherCycle matches 1 run scoreboard players set #mcf WeatherCycleTmp 0
execute if score #mcf WeatherCycle matches 0 run scoreboard players set #mcf WeatherCycleTmp 1

scoreboard players operation #mcf WeatherCycle = #mcf WeatherCycleTmp

## Remove scoreboard
scoreboard objectives remove WeatherCycleTmp

## Set inventory
function mcf:system/setting/choose_gamerule/change_to