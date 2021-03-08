#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -150 to -100 / from 100 to 150
forceload add ~-150 ~ ~-100 ~
fill ~-150 1 ~ ~-100 255 ~ minecraft:bedrock
forceload add ~100 ~ ~150 ~
fill ~100 1 ~ ~150 255 ~ minecraft:bedrock