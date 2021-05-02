#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Send messages load
tellraw @a ["",{"text":" player  : ","color":"white","bold":true},{"text":"2","color":"red","bold":true},{"text":" - ","color":"white","bold":true},{"text":"100","color":"red","bold":true}]
tellraw @a ["",{"text":" command: ","color":"white","bold":true}]
tellraw @a ["",{"text":"     ","color":"white"},{"text":"/function #mcf:start","color":"light_purple","hoverEvent":{"action":"show_text","value":"Click to start game"},"clickEvent":{"action":"suggest_command","value":"/function #mcf:start"}}]