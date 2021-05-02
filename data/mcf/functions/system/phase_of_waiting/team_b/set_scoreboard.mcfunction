#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set scoreboards
scoreboard players set #mcf_blue CountTick 20
scoreboard players operation #mcf_blue 60 = #mcf 60
scoreboard players operation #mcf_blue Minute = #mcf Minute
scoreboard players set #mcf_blue Second 0
scoreboard players set #mcf_blue Tick 0