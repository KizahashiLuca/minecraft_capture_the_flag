#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Log in the mid of the game
function mcf:system/phase_of_war/login_mid_game

## Time system
function mcf:system/phase_of_war/time/tick

## Set effect
execute if score #mcf DoNightVision matches 1 run effect give @a[tag=MCF_Player] minecraft:night_vision 1000000 1 true

## Evoker
execute if entity @e[type=minecraft:evoker] run function mcf:system/phase_of_war/evoker/main

## Banner system
function mcf:system/phase_of_war/banner/main