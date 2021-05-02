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
scoreboard players set #mcf_red CountTick 20
scoreboard players operation #mcf_red 60 = #mcf 60
scoreboard players operation #mcf_red Minute = #mcf Minute
scoreboard players set #mcf_red Second 0
scoreboard players set #mcf_red Tick 0