#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -850 to -800 / from 800 to 850
forceload add ~-850 ~ ~-800 ~
fill ~-850 1 ~ ~-800 255 ~ minecraft:bedrock
forceload add ~800 ~ ~850 ~
fill ~800 1 ~ ~850 255 ~ minecraft:bedrock