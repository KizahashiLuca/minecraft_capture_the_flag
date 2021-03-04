#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Add scoreboard
scoreboard objectives add DaylightCycleTmp dummy

## Change DaylightCycle
execute if score #mcf DaylightCycle matches 1 run scoreboard players set #mcf DaylightCycleTmp 0
execute if score #mcf DaylightCycle matches 0 run scoreboard players set #mcf DaylightCycleTmp 1

scoreboard players operation #mcf DaylightCycle = #mcf DaylightCycleTmp

## Remove scoreboard
scoreboard objectives remove DaylightCycleTmp

## Set inventory
function mcf:system/setting/choose_gamerule/change_to