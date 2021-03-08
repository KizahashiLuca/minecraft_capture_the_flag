#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -250 to -200 / from 200 to 250
forceload add ~-250 ~ ~-200 ~
clone ~-250 1 ~1 ~-200 255 ~1 ~-250 1 ~ replace
forceload add ~200 ~ ~250 ~
clone ~200 1 ~1 ~250 255 ~1 ~200 1 ~ replace