#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Log in the mid of the game
execute as @a[gamemode=!spectator,tag=!MCF_Player] run function mcf:system/setting/login_mid_game
execute as @a[gamemode=spectator,tag=MCF_Player] run function mcf:system/setting/logout_mid_game

## main branc
execute if score #mcf Phase matches 17 run function mcf:system/setting/team_member_setting/main
execute if score #mcf Phase matches 11 run function mcf:system/setting/choose_world_border/main
execute if score #mcf Phase matches 10 run function mcf:system/setting/choose_difficulty/main
execute if score #mcf Phase matches 9 run function mcf:system/setting/choose_gamerule/main
execute if score #mcf Phase matches 8 run function mcf:system/setting/choose_team_setting/main
execute if score #mcf Phase matches 7 run function mcf:system/setting/choose_phase_of_war_time/main
execute if score #mcf Phase matches 6 run function mcf:system/setting/choose_phase_of_preparation_time/main
execute if score #mcf Phase matches 5 run function mcf:system/setting/choose_setting/main