#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Time system
function mcf:system/phase_of_war/time/tick

## Set spawnpoint team a
execute if entity @e[predicate=mcf:common/banner/team_a] at @e[predicate=mcf:common/banner/team_a] run spawnpoint @a[predicate=mcf:common/player/team_a] ~ ~ ~
execute unless entity @e[predicate=mcf:common/banner/team_a] at @e[predicate=mcf:common/spawnpoint/team_a] run spawnpoint @a[predicate=mcf:common/player/team_a] ~ ~ ~

## Set spawnpoint team b
execute if entity @e[predicate=mcf:common/banner/team_b] at @e[predicate=mcf:common/banner/team_b] run spawnpoint @a[predicate=mcf:common/player/team_b] ~ ~ ~
execute unless entity @e[predicate=mcf:common/banner/team_b] at @e[predicate=mcf:common/spawnpoint/team_b] run spawnpoint @a[predicate=mcf:common/player/team_b] ~ ~ ~

## Evoker
execute if entity @e[type=minecraft:evoker] run function mcf:system/phase_of_war/evoker/main

## Launcher
execute as @a[scores={UseCrossbow=1..}] at @s run function mcf:system/phase_of_war/launcher/main
#### Rocket Launcher
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitedRocket] at @s run function mcf:system/phase_of_war/launcher/rocket_launcher/main
#### Misile Launcher
execute as @a[nbt={Inventory:[{id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,Charged:1b,Tags:["MCFitem","MCF_MisileLauncher"]}}]}] at @s run function mcf:system/phase_of_war/launcher/misile_launcher/find_target/main
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_IgnitedMisile] at @s run function mcf:system/phase_of_war/launcher/misile_launcher/main

## Evoker Fangs' Wand
execute as @a[scores={UseCarrotOnStick=1..}] at @s run function mcf:system/phase_of_war/evoker_fangs/main

## Bell
scoreboard players add @e[predicate=mcf:phase_of_preparation/bell/bell] BellTick 1
execute as @e[predicate=mcf:phase_of_preparation/bell/set_bell] at @s run function mcf:system/phase_of_preparation/bell/set_bell
execute as @e[predicate=mcf:phase_of_preparation/bell/unset_bell] at @s run function mcf:system/phase_of_preparation/bell/unset_bell
execute as @e[predicate=mcf:phase_of_preparation/bell/bell_alarm,tag=MCF_TeamA] at @s if entity @p[team=TeamB,distance=..50] run function mcf:system/phase_of_preparation/bell/bell_alarm_team_a
execute as @e[predicate=mcf:phase_of_preparation/bell/bell_alarm,tag=MCF_TeamB] at @s if entity @p[team=TeamA,distance=..50] run function mcf:system/phase_of_preparation/bell/bell_alarm_team_b

## Set scoreboard
scoreboard players set @a SneakTime 0

## Banner system
function mcf:system/phase_of_war/banner/main