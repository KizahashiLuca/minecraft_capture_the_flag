#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -450 to -400 / from 400 to 450
forceload add ~-450 ~ ~-400 ~
fill ~-450 1 ~ ~-400 255 ~ minecraft:bedrock
forceload add ~400 ~ ~450 ~
fill ~400 1 ~ ~450 255 ~ minecraft:bedrock