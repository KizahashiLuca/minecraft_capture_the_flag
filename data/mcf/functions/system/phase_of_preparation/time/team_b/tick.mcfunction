#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Calculate time every tick
scoreboard players remove #mcf_blue Tick 1
execute if score #mcf_blue Tick matches ..-1 run scoreboard players set #mcf_blue Tick 0

## Calculate time every second
execute if score #mcf_blue Tick matches 0 run function mcf:system/phase_of_preparation/time/team_b/second