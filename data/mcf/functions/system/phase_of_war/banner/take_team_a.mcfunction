#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Clear banner
clear @s minecraft:red_banner{display:{Name:'{"bold":true,"italic":false,"color":"red","text":"赤チームフラッグ"}'}}

## Set banner
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamA,limit=1] run setblock ~ ~ ~ minecraft:red_banner{CustomName:'{"text":"赤チームフラッグ","color":"red","bold":true,"italic":false}'}

## Send title messages
title @a title [""]
title @a subtitle ["",{"text":"赤チーム","color":"red"},{"text":"がフラッグを取り返した！","color":"white"}]
title @a times 20 80 20

## Set scoreboard
scoreboard players set #mcf_red StolenFlag 0