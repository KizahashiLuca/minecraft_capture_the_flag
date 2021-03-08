#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Detect location
execute if entity @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamB,distance=..1] run scoreboard players set #mcf Phase 72