#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## ontick
execute if score #mcf Phase matches 72 run function mcf:system/finish/game_team_b_win
execute if score #mcf Phase matches 71 run function mcf:system/finish/game_team_a_win
execute if score #mcf Phase matches 70 run function mcf:system/finish/game_draw
execute if score #mcf Phase matches 60 run function mcf:system/phase_of_war/main
execute if score #mcf Phase matches 40 run function mcf:system/phase_of_preparation/main
execute if score #mcf Phase matches 30 run function mcf:system/phase_of_landing/main
execute if score #mcf Phase matches 20 run function mcf:system/phase_of_waiting/main
execute if score #mcf Phase matches 5..17 run function mcf:system/setting/branch

## Launcher
execute as @a[scores={UseCrossbow=1..}] at @s run function mcf:system/phase_of_war/launcher/main
#### Rocket Launcher
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitedRocket] at @s run function mcf:system/phase_of_war/launcher/rocket_launcher/main
#### Misile Launcher
execute as @a[nbt={Inventory:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Charged:1b,Tags:["MCFitem","MCF_MisileLauncher"]}}]}] at @s run function mcf:system/phase_of_war/launcher/misile_launcher/find_target/main
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitedMisile] at @s run function mcf:system/phase_of_war/launcher/misile_launcher/main

## Evoker Fangs' Wand
execute as @a[scores={UseCarrotOnStick=1..}] at @s run function mcf:system/phase_of_war/evoker_fangs/main

## Set scoreboard
scoreboard players set @a SneakTime 0