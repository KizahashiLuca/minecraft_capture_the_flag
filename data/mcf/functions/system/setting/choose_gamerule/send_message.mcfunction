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
execute if score #mcf WeatherCycle matches 0 run tellraw @a ["",{"text":"[初期設定] 天気サイクルは ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mcf WeatherCycle matches 1 run tellraw @a ["",{"text":"[初期設定] 天気サイクルは ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mcf DaylightCycle matches 0 run tellraw @a ["",{"text":"[初期設定] 昼夜サイクルは ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mcf DaylightCycle matches 1 run tellraw @a ["",{"text":"[初期設定] 昼夜サイクルは ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mcf DoNightVision matches 0 run tellraw @a ["",{"text":"[初期設定] 常時暗視効果は ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mcf DoNightVision matches 1 run tellraw @a ["",{"text":"[初期設定] 常時暗視効果は ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mcf:system/setting/choose_setting/change_to