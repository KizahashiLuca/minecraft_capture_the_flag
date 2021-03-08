#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set own team a
tag @s remove MCF_NotSetTeam
team join TeamA @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"赤チーム","color":"red","bold":true},{"text":" に設定されました。","color":"green"}]