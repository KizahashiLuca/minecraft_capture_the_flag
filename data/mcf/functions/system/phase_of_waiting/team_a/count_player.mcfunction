#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Count players
scoreboard players add #mcf_red NumParticipant 0
execute as @a[tag=MCF_Player,team=TeamA] run scoreboard players add #mcf_red NumParticipant 1

## Test
execute if entity @p[tag=MCF_test] run scoreboard players set #mcf_red NumParticipant 5
