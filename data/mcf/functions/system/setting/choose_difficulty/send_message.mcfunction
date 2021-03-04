#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Send difficulty messages
execute if score #mcf Difficulty matches 1 run tellraw @a ["",{"text":"[初期設定] 難易度は ","color":"green"},{"text":"イージー","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mcf Difficulty matches 2 run tellraw @a ["",{"text":"[初期設定] 難易度は ","color":"green"},{"text":"ノーマル","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mcf Difficulty matches 3 run tellraw @a ["",{"text":"[初期設定] 難易度は ","color":"green"},{"text":"ハード","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mcf:system/setting/choose_setting/change_to