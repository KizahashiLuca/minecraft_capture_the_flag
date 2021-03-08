#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world border
execute if score #mcf WorldBorder matches 1100 run worldborder set 1101
execute if score #mcf WorldBorder matches 1200 run worldborder set 1201
execute if score #mcf WorldBorder matches 1300 run worldborder set 1301
execute if score #mcf WorldBorder matches 1400 run worldborder set 1401
execute if score #mcf WorldBorder matches 1500 run worldborder set 1501