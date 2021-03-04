#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Count players
execute as @a[tag=MCF_Player] run scoreboard players add #mcf NumParticipant 1

## Test
execute if entity @p[tag=MCFtest] run scoreboard players set #mcf NumParticipant 5
