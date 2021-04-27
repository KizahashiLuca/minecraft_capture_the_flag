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

## Tell position
execute as @a run function mcf:system/common/set_position/main

## Set effect
execute if score #mcf DoNightVision matches 1 run effect give @a[tag=MCF_Player] minecraft:night_vision 1000000 1 true

## Set banner
execute as @a[scores={UseBanner=1..}] at @s run function mcf:system/phase_of_preparation/banner/set_banner
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_Flag] at @s unless block ~ ~ ~ #mcf:banner run function mcf:system/phase_of_preparation/banner/unset_banner

## Set spawnpoint
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamA] at @s run spawnpoint @a[team=TeamA] ~ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamB] at @s run spawnpoint @a[team=TeamB] ~ ~ ~
execute unless entity @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamA] at @e[type=minecraft:area_effect_cloud,tag=MCF_Spawn,tag=MCF_TeamA,limit=1] run spawnpoint @a[team=TeamA] ~ ~ ~
execute unless entity @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamB] at @e[type=minecraft:area_effect_cloud,tag=MCF_Spawn,tag=MCF_TeamB,limit=1] run spawnpoint @a[team=TeamB] ~ ~ ~

## Change phase
execute if score #mcf_red Phase matches 50 run gamemode adventure @a[team=TeamA]
execute if score #mcf_blue Phase matches 50 run gamemode adventure @a[team=TeamB]

## Set banner of phase change
execute if score #mcf_red Phase matches 50 unless entity @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamA] as @a[team=TeamA,tag=MCF_Leader] at @s run function mcf:system/phase_of_preparation/banner/set_banner
execute if score #mcf_blue Phase matches 50 unless entity @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamB] as @a[team=TeamB,tag=MCF_Leader] at @s run function mcf:system/phase_of_preparation/banner/set_banner

## Evoker
execute if entity @e[type=minecraft:evoker] run function mcf:system/phase_of_war/evoker/main

## Grenade Launcher
execute as @a[scores={UseCrossbow=1..}] at @s run function mcf:system/phase_of_war/rocket_launcher/main
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitedRocket] at @s run function mcf:system/phase_of_war/rocket_launcher/ignite_rocket

## Evoker Fangs' Wand
execute as @a[scores={UseCarrotOnStick=1..}] at @s run function mcf:system/phase_of_war/evoker_fangs/main

## Change phase
execute if score #mcf_red Phase matches 50 if score #mcf_blue Phase matches 50 if entity @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamA] if entity @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamB] run function mcf:system/phase_of_war/change_to