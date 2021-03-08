#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -700 to -650 / from 650 to 700
forceload add ~-700 ~ ~-650 ~
clone ~-700 1 ~1 ~-650 255 ~1 ~-700 1 ~ replace
forceload add ~650 ~ ~700 ~
clone ~650 1 ~1 ~700 255 ~1 ~650 1 ~ replace