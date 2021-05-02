#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MCFsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mcf:system/setting/choose_difficulty/drop

## Detect inventory
scoreboard players set @p[tag=MCF_Host] Select21 1
scoreboard players set @p[tag=MCF_Host] Select22 1
scoreboard players set @p[tag=MCF_Host] Select23 1
scoreboard players set @p[tag=MCF_Host] Select28 1
scoreboard players set @p[tag=MCF_Host] Select34 1
scoreboard players set @p[tag=MCF_Host] Selected 1

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:21b,id:"minecraft:wooden_sword",tag:{Tags:["MCFsetting","easy"]}}]}] Select21 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:22b,id:"minecraft:stone_sword",tag:{Tags:["MCFsetting","normal"]}}]}] Select22 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:23b,id:"minecraft:diamond_sword",tag:{Tags:["MCFsetting","hard"]}}]}] Select23 0

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MCFsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MCFsetting","determine"]}}]}] Select34 0

execute if score #mcf Difficulty matches 1 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{Tags:["MCFsetting","selected"]}}]}] Selected 0
execute if score #mcf Difficulty matches 2 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{Tags:["MCFsetting","selected"]}}]}] Selected 0
execute if score #mcf Difficulty matches 3 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{Tags:["MCFsetting","selected"]}}]}] Selected 0

## Change to each phase
execute as @p[tag=MCF_Host,scores={Select21=1}] run function mcf:system/setting/choose_difficulty/select_easy
execute as @p[tag=MCF_Host,scores={Select22=1}] run function mcf:system/setting/choose_difficulty/select_normal
execute as @p[tag=MCF_Host,scores={Select23=1}] run function mcf:system/setting/choose_difficulty/select_hard
execute as @p[tag=MCF_Host,scores={Select28=1}] run function mcf:system/setting/choose_difficulty/select_cancel
execute as @p[tag=MCF_Host,scores={Select34=1}] run function mcf:system/setting/choose_difficulty/select_ok
execute as @p[tag=MCF_Host,scores={Selected=1}] run function mcf:system/setting/choose_difficulty/change_to