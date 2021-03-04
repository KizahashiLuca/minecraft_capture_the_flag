#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set preview choice
scoreboard players operation #mcf TimeOfPreparePrv = #mcf TimeOfPrepare

## Set bossbar
scoreboard players operation #mcf Minute = #mcf TimeOfPrepare
bossbar set minecraft:time name ["",{"text":"PREPARATION TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]

## Send messages
function mcf:system/setting/choose_phase_of_preparation_time/send_message