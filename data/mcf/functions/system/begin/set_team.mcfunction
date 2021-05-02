#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Add teams
team add TeamA {"text":"赤チーム"}
team modify TeamA color red
team modify TeamA friendlyFire true
team modify TeamA collisionRule always
team modify TeamA nametagVisibility always
team modify TeamA seeFriendlyInvisibles false
team modify TeamA deathMessageVisibility never

## Add teams
team add TeamB {"text":"青チーム"}
team modify TeamB color blue
team modify TeamB friendlyFire true
team modify TeamB collisionRule always
team modify TeamB nametagVisibility always
team modify TeamB seeFriendlyInvisibles false
team modify TeamB deathMessageVisibility never