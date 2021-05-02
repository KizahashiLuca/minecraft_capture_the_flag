#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -950 to -900 / from 900 to 950
forceload add ~-950 ~ ~-900 ~
clone ~-950 1 ~1 ~-900 255 ~1 ~-950 1 ~ replace
forceload add ~900 ~ ~950 ~
clone ~900 1 ~1 ~950 255 ~1 ~900 1 ~ replace