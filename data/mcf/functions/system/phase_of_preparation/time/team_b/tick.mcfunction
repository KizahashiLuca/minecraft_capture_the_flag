#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Calculate time every second
execute if score #mcf_blue Tick matches 0 run function mcf:system/phase_of_preparation/time/team_b/second

## Calculate time every tick
execute if score #mcf_blue Tick matches 0 run scoreboard players operation #mcf_blue Tick = #mcf_blue CountTick
execute if score #mcf_blue Tick matches 1.. run scoreboard players remove #mcf_blue Tick 1