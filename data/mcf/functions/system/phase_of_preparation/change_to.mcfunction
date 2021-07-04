#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Send title messages
title @a title ["",{"text":"Preparation Start","color":"red"}]
title @a times 20 80 20

## Send setting messages
function mcf:system/common/message_begin
tellraw @a ["",{"text":" Preparation Start","color":"red","bold":true}]
function mcf:system/common/message_end

## Set gamemode
gamemode survival @a[predicate=mcf:common/player]
execute if score #mcf Difficulty matches 1 run difficulty easy
execute if score #mcf Difficulty matches 2 run difficulty normal
execute if score #mcf Difficulty matches 3 run difficulty hard

## Spawnpoint
execute as @p[predicate=mcf:common/leader/team_a] at @s align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MCF_Spawn","MCF_TeamA"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute at @e[predicate=mcf:common/spawnpoint/team_a] run function mcf:system/phase_of_preparation/spawnpoint/team_a

## Spawnpoint
execute as @p[predicate=mcf:common/leader/team_b] at @s align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MCF_Spawn","MCF_TeamB"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute at @e[predicate=mcf:common/spawnpoint/team_b] run function mcf:system/phase_of_preparation/spawnpoint/team_b

## Kill entities
kill @e[type=minecraft:area_effect_cloud,tag=MCF_Teleporter]

## Clear inventory
clear @a[predicate=mcf:common/player]
effect clear @a[predicate=mcf:common/player]

## Give items
loot give @a[predicate=mcf:common/leader] loot mcf:phase_of_preparation/banner
loot give @a[predicate=mcf:common/leader] loot mcf:phase_of_preparation/trader_of_arms
loot give @a[predicate=mcf:common/leader] loot mcf:phase_of_preparation/trader_of_armors
loot give @a[predicate=mcf:common/leader/team_a] loot mcf:phase_of_preparation/trader_of_special_items_team_a
loot give @a[predicate=mcf:common/leader/team_b] loot mcf:phase_of_preparation/trader_of_special_items_team_b

## Set scoreboards
scoreboard players set @a[tag=MCF_Player] UseCrossbow 0

## Change phase
scoreboard players set #mcf_red Phase 40
scoreboard players set #mcf_blue Phase 40
scoreboard players set #mcf Phase 40