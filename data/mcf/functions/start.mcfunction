#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Detect Gamemode
execute if entity @p[tag=MCF_Host] run function mcf:system/finish/game_reject
execute unless entity @p[tag=MCF_Host] run function mcf:system/begin/set_game