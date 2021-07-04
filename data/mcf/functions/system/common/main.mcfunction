#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set effect
execute if score #mcf DoNightVision matches 1 run effect give @a[predicate=mcf:common/player] minecraft:night_vision 1000000 1 true

## Log in the mid of the game
#### Remove a tag
tag @a[predicate=mcf:common/player/not_team] remove MCF_Player
#### Set gamemode
gamemode spectator @a[predicate=mcf:common/player/not_spectate]
#### Set effect
effect give @a[predicate=mcf:common/player/not_player] minecraft:night_vision 1000000 1 true

## Tell position
execute as @a run function mcf:system/common/set_position/main