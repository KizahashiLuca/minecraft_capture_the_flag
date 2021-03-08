#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -600 to -550 / from 550 to 600
forceload add ~-600 ~ ~-550 ~
clone ~-600 1 ~1 ~-550 255 ~1 ~-600 1 ~ replace
forceload add ~550 ~ ~600 ~
clone ~550 1 ~1 ~600 255 ~1 ~550 1 ~ replace