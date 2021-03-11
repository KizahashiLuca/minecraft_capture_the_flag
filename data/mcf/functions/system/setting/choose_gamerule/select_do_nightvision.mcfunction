#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Add scoreboard
scoreboard objectives add DoNightVisionTmp dummy

## Change DoNightVision
execute if score #mcf DoNightVision matches 1 run scoreboard players set #mcf DoNightVisionTmp 0
execute if score #mcf DoNightVision matches 0 run scoreboard players set #mcf DoNightVisionTmp 1

scoreboard players operation #mcf DoNightVision = #mcf DoNightVisionTmp

## Remove scoreboard
scoreboard objectives remove DoNightVisionTmp

## Set inventory
function mcf:system/setting/choose_gamerule/change_to