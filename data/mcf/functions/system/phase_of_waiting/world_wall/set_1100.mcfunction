#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -550 to -500 / from 500 to 550
forceload add ~-550 ~ ~-500 ~
fill ~-550 1 ~ ~-500 255 ~ minecraft:bedrock
forceload add ~500 ~ ~550 ~
fill ~500 1 ~ ~550 255 ~ minecraft:bedrock