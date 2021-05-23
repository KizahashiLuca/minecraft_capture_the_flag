#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Reset game
#### Set wall
execute if score #mcf Phase matches 20..40 run function mcf:system/phase_of_war/set_wall
#### Reset teams
function mcf:system/finish/reset_team
#### Reset world
function mcf:system/finish/reset_world
#### Reset players
function mcf:system/finish/reset_player
#### Reset bossbars
function mcf:system/finish/reset_bossbar
#### Reset gamemode
function mcf:system/finish/reset_gamemode
#### Reset scoreboards
function mcf:system/finish/reset_scoreboard
#### Reset tags
function mcf:system/finish/reset_tag
#### Reset gamerules
function mcf:system/finish/reset_gamerule