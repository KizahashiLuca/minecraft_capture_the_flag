#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Calculate time every minute
scoreboard players remove #mcf_red Minute 1
execute if score #mcf_red Minute matches ..-1 run bossbar set minecraft:bossbar_red name ["",{"text":"PREPARATION TIME FINISHED","color":"dark_purple","bold":true}]
execute if score #mcf_red Minute matches ..-1 run scoreboard players set #mcf_red Phase 50

## Reset second
execute unless score #mcf_red Minute matches ..-1 run scoreboard players set #mcf_red Second 60