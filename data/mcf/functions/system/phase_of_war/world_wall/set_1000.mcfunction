#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -500 to -450 / from 450 to 500
forceload add ~-500 ~ ~-450 ~
clone ~-500 1 ~1 ~-450 255 ~1 ~-500 1 ~ replace
forceload add ~450 ~ ~500 ~
clone ~450 1 ~1 ~500 255 ~1 ~450 1 ~ replace