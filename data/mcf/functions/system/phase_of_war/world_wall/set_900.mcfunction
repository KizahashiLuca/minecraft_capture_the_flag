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
clone ~-450 1 ~1 ~-400 255 ~1 ~-450 1 ~ replace
forceload add ~400 ~ ~450 ~
clone ~400 1 ~1 ~450 255 ~1 ~400 1 ~ replace