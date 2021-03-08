#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Calculate time every minute
scoreboard players remove #mcf Minute 1
execute if score #mcf Minute matches ..-1 run bossbar set minecraft:bossbar name ["",{"text":"WAR TIME","color":"dark_purple","bold":true}]
execute if score #mcf Minute matches ..-1 run scoreboard players set #mcf Phase 70

## Reset second
execute unless score #mcf Minute matches ..-1 run scoreboard players set #mcf Second 60