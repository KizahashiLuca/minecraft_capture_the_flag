#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Send title messages
title @a[team=TeamA] title [""]
title @a[team=TeamA] subtitle ["",{"text":"赤チーム","color":"red"},{"text":"のフラッグが盗まれた！","color":"white"}]
title @a[team=TeamA] times 20 80 20

## Set scoreboard
scoreboard players set #mcf_red StolenFlag 1