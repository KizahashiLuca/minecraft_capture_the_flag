#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -800 to -750 / from 750 to 800
forceload add ~-800 ~ ~-750 ~
fill ~-800 1 ~ ~-750 255 ~ minecraft:bedrock
forceload add ~750 ~ ~800 ~
fill ~750 1 ~ ~800 255 ~ minecraft:bedrock