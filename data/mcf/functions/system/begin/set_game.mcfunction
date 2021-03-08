#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Reset game
#### Reset teams
function mcf:system/finish/reset_team
#### Reset world
# function mcf:system/finish/reset_world
#### Reset players
# function mcf:system/finish/reset_player
#### Reset bossbars
function mcf:system/finish/reset_bossbar
#### Reset gamemode
# function mcf:system/finish/reset_gamemode
#### Reset gamerules
function mcf:system/finish/reset_gamerule
#### Reset scoreboards
function mcf:system/finish/reset_scoreboard
#### Reset tags
function mcf:system/finish/reset_tag

## Set game
#### Set tags
function mcf:system/begin/set_tag
#### Set scoreboards
function mcf:system/begin/set_scoreboard
#### Set gamerules
function mcf:system/begin/set_gamerule
#### Set gamemode
function mcf:system/begin/set_gamemode
#### Set bossbars
function mcf:system/begin/set_bossbar
#### Set players
function mcf:system/begin/set_player
#### Set world
function mcf:system/begin/set_world
#### Set teams
function mcf:system/begin/set_team
#### Count number
function mcf:system/begin/count_number

## Branch
execute if score #mcf NumParticipant matches 2.. run function mcf:system/begin/send_message
execute if score #mcf NumParticipant matches ..1 run function mcf:system/finish/game_few