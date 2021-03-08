#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set world wall from -900 to -850 / from 850 to 900
forceload add ~-900 ~ ~-850 ~
clone ~-900 1 ~1 ~-850 255 ~1 ~-900 1 ~ replace
forceload add ~850 ~ ~900 ~
clone ~850 1 ~1 ~900 255 ~1 ~850 1 ~ replace