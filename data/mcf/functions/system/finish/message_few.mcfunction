#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Send messages
function mcf:system/common/message_begin
tellraw @a ["",{"text":" TOO FEW PLAYERS","color":"red","bold":true}]
tellraw @a ["",{"text":" player  : ","color":"white","bold":true},{"text":"2","color":"red","bold":true},{"text":" - ","color":"white","bold":true},{"text":"100","color":"red","bold":true}]
function mcf:system/common/message_end