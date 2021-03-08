#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -300 to -250 / from 250 to 300
forceload add ~-300 ~ ~-250 ~
clone ~-300 1 ~1 ~-250 255 ~1 ~-300 1 ~ replace
forceload add ~250 ~ ~300 ~
clone ~250 1 ~1 ~300 255 ~1 ~250 1 ~ replace