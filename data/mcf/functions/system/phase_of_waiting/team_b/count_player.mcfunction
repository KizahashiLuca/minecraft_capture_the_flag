#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Count players
scoreboard players add #mcf_blue NumParticipant 0
execute as @a[tag=MCF_Player,team=TeamB] run scoreboard players add #mcf_blue NumParticipant 1

## Test
execute if entity @p[tag=MCF_test] run scoreboard players set #mcf_blue NumParticipant 5
