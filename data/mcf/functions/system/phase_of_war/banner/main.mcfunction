#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Stolen banner
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamA,limit=1] unless block ~ ~ ~ minecraft:red_banner{CustomName:'{"bold":true,"italic":false,"color":"red","text":"赤チームフラッグ"}'} if score #mcf_red StolenFlag matches 0 run function mcf:system/phase_of_war/banner/stolen_team_a
execute at @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamB,limit=1] unless block ~ ~ ~ minecraft:blue_banner{CustomName:'{"bold":true,"italic":false,"color":"blue","text":"青チームフラッグ"}'} if score #mcf_blue StolenFlag matches 0 run function mcf:system/phase_of_war/banner/stolen_team_b

## Reset banner
execute as @a[team=TeamA,nbt={Inventory:[{id:"minecraft:red_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"red","text":"赤チームフラッグ"}'}}}]}] run function mcf:system/phase_of_war/banner/take_team_a
execute as @a[team=TeamB,nbt={Inventory:[{id:"minecraft:blue_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"blue","text":"青チームフラッグ"}'}}}]}] run function mcf:system/phase_of_war/banner/take_team_b

execute unless entity @p[team=TeamB,nbt={Inventory:[{id:"minecraft:red_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"red","text":"赤チームフラッグ"}'}}}]}] unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"red","text":"赤チームフラッグ"}'}}}}] at @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamA,limit=1] unless block ~ ~ ~ minecraft:red_banner{CustomName:'{"bold":true,"italic":false,"color":"red","text":"赤チームフラッグ"}'} run function mcf:system/phase_of_war/banner/take_team_a
execute unless entity @p[team=TeamA,nbt={Inventory:[{id:"minecraft:blue_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"blue","text":"青チームフラッグ"}'}}}]}] unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"blue","text":"青チームフラッグ"}'}}}}] at @e[type=minecraft:area_effect_cloud,tag=MCF_Flag,tag=MCF_TeamB,limit=1] unless block ~ ~ ~ minecraft:blue_banner{CustomName:'{"bold":true,"italic":false,"color":"blue","text":"青チームフラッグ"}'} run function mcf:system/phase_of_war/banner/take_team_b

## Decide winner
execute as @a[team=TeamA,nbt={Inventory:[{id:"minecraft:blue_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"blue","text":"青チームフラッグ"}'}}}]}] at @s run function mcf:system/phase_of_war/banner/decide_winner_team_a
execute as @a[team=TeamB,nbt={Inventory:[{id:"minecraft:red_banner",tag:{display:{Name:'{"bold":true,"italic":false,"color":"red","text":"赤チームフラッグ"}'}}}]}] at @s run function mcf:system/phase_of_war/banner/decide_winner_team_b