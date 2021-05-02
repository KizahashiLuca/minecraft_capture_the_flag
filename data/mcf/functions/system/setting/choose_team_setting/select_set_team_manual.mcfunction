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
scoreboard objectives add SetTeamManualTmp dummy

## Change SetTeamManual
execute if score #mcf SetTeamManual matches 0 run scoreboard players set #mcf SetTeamManualTmp 1
execute if score #mcf SetTeamManual matches 1 run scoreboard players set #mcf SetTeamManualTmp 0

scoreboard players operation #mcf SetTeamManual = #mcf SetTeamManualTmp

## Remove scoreboard
scoreboard objectives remove SetTeamManualTmp

## Set inventory
function mcf:system/setting/choose_team_setting/change_to