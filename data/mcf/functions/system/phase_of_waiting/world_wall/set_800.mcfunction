#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -400 to -350 / from 350 to 400
forceload add ~-400 ~ ~-350 ~
fill ~-400 1 ~ ~-350 255 ~ minecraft:bedrock
forceload add ~350 ~ ~400 ~
fill ~350 1 ~ ~400 255 ~ minecraft:bedrock