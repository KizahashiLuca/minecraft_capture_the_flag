#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Load add-on
execute if score #mcf LoadAddon matches 1.. run scoreboard players remove #mcf LoadAddon 1

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MCFsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mcf:system/setting/choose_setting/drop

## Detect inventory
scoreboard players set @p[tag=MCF_Host] Select12 1
scoreboard players set @p[tag=MCF_Host] Select13 1
scoreboard players set @p[tag=MCF_Host] Select14 1
scoreboard players set @p[tag=MCF_Host] Select21 1
scoreboard players set @p[tag=MCF_Host] Select22 1
scoreboard players set @p[tag=MCF_Host] Select23 1
scoreboard players set @p[tag=MCF_Host] Select28 1
scoreboard players set @p[tag=MCF_Host] Select34 1

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:12b,id:"minecraft:stone_pickaxe",tag:{Tags:["MCFsetting","choose_phase_of_preparation_time"]}}]}] Select12 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:13b,id:"minecraft:stone_axe",tag:{Tags:["MCFsetting","choose_phase_of_war_time"]}}]}] Select13 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:14b,id:"minecraft:phantom_membrane",tag:{Tags:["MCFsetting","choose_team_setting"]}}]}] Select14 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:21b,id:"minecraft:writable_book",tag:{Tags:["MCFsetting","choose_gamerule"]}}]}] Select21 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:22b,id:"minecraft:iron_sword",tag:{Tags:["MCFsetting","choose_difficulty"]}}]}] Select22 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:23b,id:"minecraft:map",tag:{Tags:["MCFsetting","choose_world_border"]}}]}] Select23 0

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MCFsetting","cancel_game"]}}]}] Select28 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MCFsetting","start_game"]}}]}] Select34 0

## Change to each phase
execute as @p[tag=MCF_Host,scores={Select12=1}] run function mcf:system/setting/choose_phase_of_preparation_time/change_to
execute as @p[tag=MCF_Host,scores={Select13=1}] run function mcf:system/setting/choose_phase_of_war_time/change_to
execute as @p[tag=MCF_Host,scores={Select14=1}] run function mcf:system/setting/choose_team_setting/change_to
execute as @p[tag=MCF_Host,scores={Select21=1}] run function mcf:system/setting/choose_gamerule/change_to
execute as @p[tag=MCF_Host,scores={Select22=1}] run function mcf:system/setting/choose_difficulty/change_to
execute as @p[tag=MCF_Host,scores={Select23=1}] run function mcf:system/setting/choose_world_border/change_to
execute as @p[tag=MCF_Host,scores={Select28=1}] run function mcf:system/setting/choose_setting/game_cancel
execute as @p[tag=MCF_Host,scores={Select34=1}] run function mcf:system/setting/choose_setting/change_to_team_member