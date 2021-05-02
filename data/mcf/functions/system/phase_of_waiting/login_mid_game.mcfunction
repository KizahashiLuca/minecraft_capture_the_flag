#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Log in the mid of the game
#### Set tags
tag @a[tag=MCF_Player,team=!TeamA,team=!TeamB] remove MCF_Player
#### Set gamemode
gamemode spectator @a[team=!TeamA,team=!TeamB,gamemode=!spectator]
#### Set effect
effect give @a[tag=!MCF_Player] minecraft:night_vision 1000000 1 true