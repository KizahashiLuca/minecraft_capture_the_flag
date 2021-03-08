#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Send member setting messages
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":" RED TEAM","color":"red","bold":true}]
tellraw @a ["",{"text":"  "},{"selector":"@a[team=TeamA]"}]
tellraw @a ["",{"text":"","color":"white"}]
tellraw @a ["",{"text":" BLUE TEAM","color":"blue","bold":true}]
tellraw @a ["",{"text":"  "},{"selector":"@a[team=TeamB]"}]