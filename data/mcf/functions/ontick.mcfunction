#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## ontick
execute if score #mcf Phase matches 72 run function mcf:system/finish/game_team_b_win
execute if score #mcf Phase matches 71 run function mcf:system/finish/game_team_a_win
execute if score #mcf Phase matches 70 run function mcf:system/finish/game_draw
execute if score #mcf Phase matches 60 run function mcf:system/phase_of_war/main
execute if score #mcf Phase matches 40 run function mcf:system/phase_of_preparation/main
execute if score #mcf Phase matches 30 run function mcf:system/phase_of_landing/main
execute if score #mcf Phase matches 20 run function mcf:system/phase_of_waiting/main
execute if score #mcf Phase matches 0..17 run function mcf:system/setting/branch