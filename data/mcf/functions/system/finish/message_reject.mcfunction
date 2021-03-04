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
tellraw @a ["",{"text":"  GAME IS ALREADY STARTED","color":"red","bold":true}]
tellraw @a ["",{"text":"  CANNOT START NEW GAME","color":"red","bold":true}]
tellraw @a ["",{"text":" command: ","color":"white","bold":true}]
tellraw @a ["",{"text":"     ","color":"white"},{"text":"/function #mcf:stop","color":"light_purple","hoverEvent":{"action":"show_text","value":"Click to stop game"},"clickEvent":{"action":"suggest_command","value":"/function #mcf:start"}}]
function mcf:system/common/message_end