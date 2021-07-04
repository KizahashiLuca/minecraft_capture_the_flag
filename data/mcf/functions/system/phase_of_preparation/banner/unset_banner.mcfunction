#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Break banner
setblock ~ ~ ~ minecraft:air
fill ~-2 ~-1 ~-2 ~2 ~1 ~2 minecraft:air

## Load area
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",powered:0b,posX:-2,posY:-1,posZ:-2,sizeX:5,sizeY:3,sizeZ:5,rotation:"NONE",showboundingbox:1b,showair:1b}

execute as @s[predicate=mcf:common/banner/team_a] run data merge block ~ ~ ~ {name:"mcf:save_banner_team_a"}
execute as @s[predicate=mcf:common/banner/team_b] run data merge block ~ ~ ~ {name:"mcf:save_banner_team_b"}

## Set redstone block
setblock ~ ~1 ~ minecraft:redstone_block

## Set air
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air

## Kill banner
kill @e[predicate=mcf:phase_of_preparation/banner/banner_item]

## Spawnpoint
execute as @s[predicate=mcf:common/banner/team_a] at @e[predicate=mcf:common/spawnpoint/team_a] run function mcf:system/phase_of_preparation/spawnpoint/team_a
execute as @s[predicate=mcf:common/banner/team_b] at @e[predicate=mcf:common/spawnpoint/team_b] run function mcf:system/phase_of_preparation/spawnpoint/team_b

## Unset forceload
forceload remove ~ ~

## Spawn banner
loot spawn ~ ~ ~ loot mcf:phase_of_preparation/banner

## Kill cloud
kill @s