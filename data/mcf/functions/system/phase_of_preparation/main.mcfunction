#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Log in the mid of the game
function mcf:system/phase_of_preparation/login_mid_game

## Time system
execute if entity @p[team=TeamA] if score #mcf_red Phase matches 40 run function mcf:system/phase_of_preparation/time/team_a/tick
execute if entity @p[team=TeamB] if score #mcf_blue Phase matches 40 run function mcf:system/phase_of_preparation/time/team_b/tick

## Set banner
execute as @a[scores={UseBanner=1..}] at @s run function mcf:system/phase_of_preparation/banner/set_banner
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_Flag] at @s unless block ~ ~ ~ #mcf:banner run function mcf:system/phase_of_preparation/banner/unset_banner

## Change phase
execute if score #mcf_red Phase matches 50 run gamemode adventure @a[team=TeamA]
execute if score #mcf_blue Phase matches 50 run gamemode adventure @a[team=TeamB]

## Change phase
execute if score #mcf_red Phase matches 50 if score #mcf_blue Phase matches 50 if entity @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamA] if entity @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamB] run function mcf:system/phase_of_war/change_to