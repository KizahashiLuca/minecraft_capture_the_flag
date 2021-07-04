#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Play sound
playsound minecraft:ui.button.click master @p[predicate=mcf:common/player/host_player] ~ ~ ~ 1 1 1

## Summon world spawn
execute at @p[predicate=mcf:common/player/host_player] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MCF_WorldSpawn"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
## Set forceload
forceload remove all
execute at @e[predicate=mcf:common/spawnpoint/world_spawn] align xyz run forceload add ~ ~

## Set player
clear @a

## Set player number
scoreboard players set #mcf PlayerNumber 1
scoreboard players set @a[predicate=mcf:common/player] PlayerNumber 0
function mcf:system/phase_of_waiting/numbering
tag @a[predicate=mcf:common/player] remove MCF_Numbered

## Reset bossbar
bossbar remove minecraft:bossbar

## Set scoreboards
scoreboard players set @a[predicate=mcf:common/player] UseCrossbow 0
scoreboard players set #mcf Tick 0
scoreboard players set #mcf Second 30

## Change phase
scoreboard players set #mcf Phase 20