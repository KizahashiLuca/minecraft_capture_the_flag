#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Send title messages
title @a title ["",{"text":"DRAW","color":"white"}]
title @a times 20 80 20

## Send messages
function mcf:system/common/message_begin
tellraw @a ["",{"text":" GAME SET","color":"white","bold":true}]
tellraw @a ["",{"text":" DRAW","color":"white","bold":true}]
function mcf:system/common/message_end