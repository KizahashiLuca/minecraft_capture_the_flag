#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Send title messages
title @a title ["",{"text":"BLUE TEAM WIN","color":"blue"}]
title @a times 20 80 20

## Send messages
function mcf:system/common/message_begin
tellraw @a ["",{"text":" GAME SET","color":"white","bold":true}]
tellraw @a ["",{"text":" BLUE TEAM WIN","color":"blue","bold":true}]
function mcf:system/common/message_end