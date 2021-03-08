#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world border
execute if score #mcf WorldBorder matches 100 run worldborder set 101
execute if score #mcf WorldBorder matches 200 run worldborder set 201
execute if score #mcf WorldBorder matches 300 run worldborder set 301
execute if score #mcf WorldBorder matches 400 run worldborder set 401
execute if score #mcf WorldBorder matches 500 run worldborder set 501