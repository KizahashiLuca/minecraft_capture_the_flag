#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Send title messages
title @a title ["",{"text":"Preparation Start","color":"red"}]
title @a times 20 80 20

## Send setting messages
function mcf:system/common/message_begin
tellraw @a ["",{"text":" Preparation Start","color":"red","bold":true}]
function mcf:system/common/message_end

## Set gamemode
gamemode survival @a[tag=MCF_Player]
execute if score #mcf Difficulty matches 1 run difficulty easy
execute if score #mcf Difficulty matches 2 run difficulty normal
execute if score #mcf Difficulty matches 3 run difficulty hard

## Spawnpoint
execute as @p[team=TeamA,tag=MCF_Leader] at @s align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MCF_Spawn","MCF_TeamA"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_Spawn,tag=MCF_TeamA,limit=1] run forceload add ~ ~

## Spawnpoint
execute as @p[team=TeamB,tag=MCF_Leader] at @s align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MCF_Spawn","MCF_TeamB"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_Spawn,tag=MCF_TeamB,limit=1] run forceload add ~ ~

## Kill entities
kill @e[type=minecraft:area_effect_cloud,tag=MCF_Teleporter]

## Clear inventory
clear @a[tag=MCF_Player]
effect clear @a[tag=MCF_Player]

## Give items
loot give @a[tag=MCF_Player,tag=MCF_Leader] loot mcf:phase_of_preparation/banner
loot give @a[tag=MCF_Player,tag=MCF_Leader] loot mcf:phase_of_preparation/trader_of_arms
loot give @a[tag=MCF_Player,tag=MCF_Leader] loot mcf:phase_of_preparation/trader_of_special_items

## Change phase
scoreboard players set #mcf_red Phase 40
scoreboard players set #mcf_blue Phase 40
scoreboard players set #mcf Phase 40