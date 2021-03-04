#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set preview choice
scoreboard players operation #mcf friendlyFirePrv = #mcf friendlyFire
scoreboard players operation #mcf collisionRulePrv = #mcf collisionRule
scoreboard players operation #mcf VisibleNamePrv = #mcf VisibleName
scoreboard players operation #mcf VisibleInvisPrv = #mcf VisibleInvis
scoreboard players operation #mcf VisibleDeathPrv = #mcf VisibleDeath
scoreboard players operation #mcf SetTeamManualPrv = #mcf SetTeamManual

## Send messages
function mcf:system/setting/choose_team_setting/send_message