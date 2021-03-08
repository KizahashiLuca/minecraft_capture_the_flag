#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world border
execute if score #mcf WorldBorder matches 600 run worldborder set 601
execute if score #mcf WorldBorder matches 700 run worldborder set 701
execute if score #mcf WorldBorder matches 800 run worldborder set 801
execute if score #mcf WorldBorder matches 900 run worldborder set 901
execute if score #mcf WorldBorder matches 1000 run worldborder set 1001