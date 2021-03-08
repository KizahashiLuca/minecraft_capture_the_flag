#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Break banner
setblock ~ ~ ~ minecraft:air
fill ~-2 ~-1 ~-2 ~2 ~1 ~2 minecraft:air

## Load area
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",powered:0b,posX:-2,posY:-1,posZ:-2,sizeX:5,sizeY:3,sizeZ:5,rotation:"NONE",showboundingbox:1b,showair:1b}

execute as @s[tag=MCF_TeamA] run data merge block ~ ~ ~ {name:"mcf:save_banner_team_a"}
execute as @s[tag=MCF_TeamB] run data merge block ~ ~ ~ {name:"mcf:save_banner_team_b"}

## Set redstone block
setblock ~ ~1 ~ minecraft:redstone_block

## Set air
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air

## Kill bat
data modify entity @e[type=minecraft:bat,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"red","text":"フラッグ設置用アイテム"}],"text":""}'},sort=nearest,limit=1] CustomNameVisible set value 0b
effect give @e[type=minecraft:bat,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"フラッグ設置用アイテム"}],"text":""}'},sort=nearest,limit=1] minecraft:invisibility 100000 1 true
kill @e[type=minecraft:bat,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"フラッグ設置用アイテム"}],"text":""}'},sort=nearest,limit=1]

## Kill banner
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"red","text":"赤チームフラッグ"}'}}}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"blue","text":"青チームフラッグ"}'}}}}]

## Spawnpoint
execute as @s[tag=MCF_TeamA] at @e[type=minecraft:area_effect_cloud,tag=MCF_Spawn,tag=MCF_TeamA,limit=1] run spawnpoint @a[team=TeamA] ~ ~ ~
execute as @s[tag=MCF_TeamB] at @e[type=minecraft:area_effect_cloud,tag=MCF_Spawn,tag=MCF_TeamB,limit=1] run spawnpoint @a[team=TeamB] ~ ~ ~

## Unset forceload
forceload remove ~ ~

## Spawn banner
loot spawn ~ ~ ~ loot mcf:phase_of_preparation/banner

# Kill armor stand
kill @s