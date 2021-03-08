#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world border
execute if score #mcf WorldBorder matches 1600 run worldborder set 1601
execute if score #mcf WorldBorder matches 1700 run worldborder set 1701
execute if score #mcf WorldBorder matches 1800 run worldborder set 1801
execute if score #mcf WorldBorder matches 1900 run worldborder set 1901
execute if score #mcf WorldBorder matches 2000 run worldborder set 2001