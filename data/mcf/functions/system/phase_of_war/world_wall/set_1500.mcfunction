#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set world wall from -750 to -700 / from 700 to 750
forceload add ~-750 ~ ~-700 ~
clone ~-750 1 ~1 ~-700 255 ~1 ~-750 1 ~ replace
forceload add ~700 ~ ~750 ~
clone ~700 1 ~1 ~750 255 ~1 ~700 1 ~ replace