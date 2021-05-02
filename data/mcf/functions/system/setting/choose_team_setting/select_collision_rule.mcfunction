#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Add scoreboard
scoreboard objectives add collisionRuleTmp dummy

## Change collisionRule
execute if score #mcf collisionRule matches 1 run scoreboard players set #mcf collisionRuleTmp 0
execute if score #mcf collisionRule matches 0 run scoreboard players set #mcf collisionRuleTmp 1

scoreboard players operation #mcf collisionRule = #mcf collisionRuleTmp

## Remove scoreboard
scoreboard objectives remove collisionRuleTmp

## Set inventory
function mcf:system/setting/choose_team_setting/change_to