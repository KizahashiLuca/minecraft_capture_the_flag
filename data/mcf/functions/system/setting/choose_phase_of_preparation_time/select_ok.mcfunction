#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set preview choice
scoreboard players operation #mcf TimeOfPreparePrv = #mcf TimeOfPrepare

## Set scoreboards
scoreboard players operation #mcf Minute = #mcf TimeOfPrepare
scoreboard players operation #mcf RestSecond = #mcf Minute
scoreboard players operation #mcf RestSecond *= #mcf 60
scoreboard players operation #mcf RestSecond += #mcf Second
scoreboard players operation #mcf TotalSecond = #mcf RestSecond
execute store result bossbar minecraft:bossbar max run scoreboard players get #mcf TotalSecond
execute store result bossbar minecraft:bossbar value run scoreboard players get #mcf RestSecond

## Set bossbar
bossbar set minecraft:bossbar name ["",{"text":"PREPARATION TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]

## Send messages
function mcf:system/setting/choose_phase_of_preparation_time/send_message