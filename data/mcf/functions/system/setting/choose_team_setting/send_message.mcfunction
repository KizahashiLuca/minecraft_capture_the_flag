#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Send messages
execute if score #mcf friendlyFire matches 0 run tellraw @a ["",{"text":"[初期設定] フレンドリーファイアは ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mcf friendlyFire matches 1 run tellraw @a ["",{"text":"[初期設定] フレンドリーファイアは ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mcf collisionRule matches 0 run tellraw @a ["",{"text":"[初期設定] 当たり判定は ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mcf collisionRule matches 1 run tellraw @a ["",{"text":"[初期設定] 当たり判定は ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mcf VisibleName matches 0 run tellraw @a ["",{"text":"[初期設定] ネームタグ表示は ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mcf VisibleName matches 1 run tellraw @a ["",{"text":"[初期設定] ネームタグ表示は ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mcf VisibleInvis matches 0 run tellraw @a ["",{"text":"[初期設定] 透明可視化は ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mcf VisibleInvis matches 1 run tellraw @a ["",{"text":"[初期設定] 透明可視化は ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mcf VisibleDeath matches 0 run tellraw @a ["",{"text":"[初期設定] 死亡メッセージは ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mcf VisibleDeath matches 1 run tellraw @a ["",{"text":"[初期設定] 死亡メッセージは ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mcf SetTeamManual matches 0 run tellraw @a ["",{"text":"[初期設定] チームメンバー選択は ","color":"green"},{"text":"ランダム","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mcf SetTeamManual matches 1 run tellraw @a ["",{"text":"[初期設定] チームメンバー選択は ","color":"green"},{"text":"手動","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mcf:system/setting/choose_setting/change_to