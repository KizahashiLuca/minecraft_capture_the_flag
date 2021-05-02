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
scoreboard objectives add VisibleNameTmp dummy

## Change VisibleName
execute if score #mcf VisibleName matches 1 run scoreboard players set #mcf VisibleNameTmp 0
execute if score #mcf VisibleName matches 0 run scoreboard players set #mcf VisibleNameTmp 1

scoreboard players operation #mcf VisibleName = #mcf VisibleNameTmp

## Remove scoreboard
scoreboard objectives remove VisibleNameTmp

## Set inventory
function mcf:system/setting/choose_team_setting/change_to