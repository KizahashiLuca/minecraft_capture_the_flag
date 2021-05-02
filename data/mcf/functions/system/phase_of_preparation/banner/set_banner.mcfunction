#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set scoreboard
scoreboard players reset @s UseBanner

## Save area
setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE",powered:0b,posX:-2,posY:-1,posZ:-2,sizeX:5,sizeY:3,sizeZ:5,showboundingbox:1b,showair:1b}

execute as @s[team=TeamA] run data merge block ~ ~ ~ {name:"mcf:save_banner_team_a"}
execute as @s[team=TeamB] run data merge block ~ ~ ~ {name:"mcf:save_banner_team_b"}

## Set redstone block
setblock ~ ~1 ~ minecraft:redstone_block

## Create banner
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:bedrock
fill ~ ~-1 ~-2 ~ ~-1 ~2 minecraft:bedrock
fill ~-2 ~-1 ~ ~2 ~-1 ~ minecraft:bedrock
fill ~-2 ~0 ~-2 ~2 ~1 ~2 minecraft:air
setblock ~ ~ ~ minecraft:barrier
execute as @s[team=TeamA] run setblock ~ ~ ~ minecraft:red_banner{CustomName:'{"text":"赤チームフラッグ","color":"red","bold":true,"italic":false}'}
execute as @s[team=TeamB] run setblock ~ ~ ~ minecraft:blue_banner{CustomName:'{"text":"青チームフラッグ","color":"blue","bold":true,"italic":false}'}

## Summon cloud
execute as @s[team=TeamA] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MCF_Flag","MCF_TeamA"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute as @s[team=TeamB] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["MCF_Flag","MCF_TeamB"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}

## Set forceload
forceload add ~ ~

## Kill bat
data modify entity @e[type=minecraft:bat,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"red","text":"フラッグ設置用アイテム"}],"text":""}'},sort=nearest,limit=1] CustomNameVisible set value 0b
effect give @e[type=minecraft:bat,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"フラッグ設置用アイテム"}],"text":""}'},sort=nearest,limit=1] minecraft:invisibility 100000 1 true
kill @e[type=minecraft:bat,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"フラッグ設置用アイテム"}],"text":""}'},sort=nearest,limit=1]