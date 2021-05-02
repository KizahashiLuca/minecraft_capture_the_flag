#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set gamerule - friendlyFire
execute if score #mcf friendlyFire matches 1 run team modify TeamB friendlyFire true
execute if score #mcf friendlyFire matches 0 run team modify TeamB friendlyFire false
## Set gamerule - collisionRule
execute if score #mcf collisionRule matches 1 run team modify TeamB collisionRule always
execute if score #mcf collisionRule matches 0 run team modify TeamB collisionRule pushOtherTeams
## Set gamerule - nametagVisibility
execute if score #mcf VisibleName matches 1 run team modify TeamB nametagVisibility hideForOtherTeams
execute if score #mcf VisibleName matches 0 run team modify TeamB nametagVisibility never
## Set gamerule - seeFriendlyInvisibles
execute if score #mcf VisibleInvis matches 1 run team modify TeamB seeFriendlyInvisibles true
execute if score #mcf VisibleInvis matches 0 run team modify TeamB seeFriendlyInvisibles false
## Set gamerule - deathMessageVisibility
execute if score #mcf VisibleDeath matches 1 run team modify TeamB deathMessageVisibility hideForOtherTeams
execute if score #mcf VisibleDeath matches 0 run team modify TeamB deathMessageVisibility never