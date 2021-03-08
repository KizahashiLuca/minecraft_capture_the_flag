#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Number the players
scoreboard players operation @p[tag=MCF_Player,tag=!MCF_Numbered,sort=random] PlayerNumber = #mcf PlayerNumber
execute as @a[tag=MCF_Player,tag=!MCF_Numbered] if score @s PlayerNumber = #mcf PlayerNumber run tag @s add MCF_Numbered

## Loop
scoreboard players add #mcf PlayerNumber 1
execute if score #mcf PlayerNumber <= #mcf NumParticipant run function mcf:system/phase_of_waiting/numbering