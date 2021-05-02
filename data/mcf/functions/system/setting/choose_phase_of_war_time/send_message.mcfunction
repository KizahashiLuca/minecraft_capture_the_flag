#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Send time limit messages
tellraw @a ["",{"text":"[初期設定] 戦争フェーズは ","color":"green"},{"score":{"name":"#mcf","objective":"TimeOfWar"},"color":"green","bold":true},{"text":"分","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mcf:system/setting/choose_setting/change_to