#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Clear banner
clear @s minecraft:blue_banner{display:{Name:'{"bold":true,"italic":false,"color":"blue","text":"青チームフラッグ"}'}}

## Set banner
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamB,limit=1] run setblock ~ ~ ~ minecraft:blue_banner{CustomName:'{"text":"青チームフラッグ","color":"blue","bold":true,"italic":false}'}