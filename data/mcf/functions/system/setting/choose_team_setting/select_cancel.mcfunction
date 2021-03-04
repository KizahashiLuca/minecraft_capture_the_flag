#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Reset choice
scoreboard players operation #mcf friendlyFire = #mcf friendlyFirePrv
scoreboard players operation #mcf collisionRule = #mcf collisionRulePrv
scoreboard players operation #mcf VisibleName = #mcf VisibleNamePrv
scoreboard players operation #mcf VisibleInvis = #mcf VisibleInvisPrv
scoreboard players operation #mcf VisibleDeath = #mcf VisibleDeathPrv
scoreboard players operation #mcf SetTeamManual = #mcf SetTeamManualPrv

## Send messages
function mcf:system/setting/choose_team_setting/send_message