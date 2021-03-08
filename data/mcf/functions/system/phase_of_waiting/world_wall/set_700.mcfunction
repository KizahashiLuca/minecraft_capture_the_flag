#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -350 to -300 / from 300 to 350
forceload add ~-350 ~ ~-300 ~
fill ~-350 1 ~ ~-300 255 ~ minecraft:bedrock
forceload add ~300 ~ ~350 ~
fill ~300 1 ~ ~350 255 ~ minecraft:bedrock