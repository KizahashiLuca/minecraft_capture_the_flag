#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## ongame main
# execute if score #mcf Phase matches 99 run function mcf:system/onpause/main
# execute if score #mcf Phase matches 22 run function mcf:system/finish/game_exit
# execute if score #mcf Phase matches 21 if score #mcf IsTeam matches 0 run function mcf:system/ongame_individual/main
# execute if score #mcf Phase matches 21 if score #mcf IsTeam matches 1 run function mcf:system/ongame_team/main
# execute if score #mcf Phase matches 20 run function mcf:system/preparation/main
# execute if score #mcf Phase matches 19 run function mcf:system/pre_preparation/main
execute if score #mcf Phase matches 0..17 run function mcf:system/setting/branch