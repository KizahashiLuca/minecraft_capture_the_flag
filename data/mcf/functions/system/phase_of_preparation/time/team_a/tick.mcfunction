#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Calculate time every second
execute if score #mcf_red Tick matches 0 run function mcf:system/phase_of_preparation/time/team_a/second

## Calculate time every tick
execute if score #mcf_red Tick matches 0 run scoreboard players operation #mcf_red Tick = #mcf_red CountTick
execute if score #mcf_red Tick matches 1.. run scoreboard players remove #mcf_red Tick 1