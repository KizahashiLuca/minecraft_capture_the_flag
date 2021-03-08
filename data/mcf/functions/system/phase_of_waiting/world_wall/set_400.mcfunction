#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -200 to -150 / from 150 to 200
forceload add ~-200 ~ ~-150 ~
fill ~-200 1 ~ ~-150 255 ~ minecraft:bedrock
forceload add ~150 ~ ~200 ~
fill ~150 1 ~ ~200 255 ~ minecraft:bedrock