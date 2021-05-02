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
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mcf:system/setting/choose_phase_of_war_time/drop

## Detect inventory
scoreboard players set @p[tag=MCF_Host] Select13 1
scoreboard players set @p[tag=MCF_Host] Select19 1
scoreboard players set @p[tag=MCF_Host] Select20 1
scoreboard players set @p[tag=MCF_Host] Select21 1
scoreboard players set @p[tag=MCF_Host] Select22 1
scoreboard players set @p[tag=MCF_Host] Select23 1
scoreboard players set @p[tag=MCF_Host] Select24 1
scoreboard players set @p[tag=MCF_Host] Select25 1
scoreboard players set @p[tag=MCF_Host] Select28 1
scoreboard players set @p[tag=MCF_Host] Select31 1
execute if score #mcf TimeOfWar matches 1.. run scoreboard players set @p[tag=MCF_Host] Select34 1

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:13b,id:"minecraft:stone_axe",tag:{Tags:["MCFsetting","choose_phase_of_war_time"]}}]}] Select13 0

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:19b,id:"minecraft:white_banner",tag:{Tags:["MCFsetting","number"]}}]}] Select19 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:20b,id:"minecraft:white_banner",tag:{Tags:["MCFsetting","number"]}}]}] Select20 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:21b,id:"minecraft:white_banner",tag:{Tags:["MCFsetting","number"]}}]}] Select21 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:22b,id:"minecraft:white_banner",tag:{Tags:["MCFsetting","number"]}}]}] Select22 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:23b,id:"minecraft:white_banner",tag:{Tags:["MCFsetting","number"]}}]}] Select23 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:24b,id:"minecraft:white_banner",tag:{Tags:["MCFsetting","number"]}}]}] Select24 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:25b,id:"minecraft:white_banner",tag:{Tags:["MCFsetting","number"]}}]}] Select25 0

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MCFsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{Tags:["MCFsetting","reset"]}}]}] Select31 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MCFsetting","determine"]}}]}] Select34 0

## Change to each phase
execute as @p[tag=MCF_Host,scores={Select13=1}] run function mcf:system/setting/choose_phase_of_war_time/change_to
execute as @p[tag=MCF_Host,scores={Select19=1}] run function mcf:system/setting/choose_phase_of_war_time/select_digit_0100
execute as @p[tag=MCF_Host,scores={Select20=1}] run function mcf:system/setting/choose_phase_of_war_time/select_digit_0010
execute as @p[tag=MCF_Host,scores={Select21=1}] run function mcf:system/setting/choose_phase_of_war_time/select_digit_0001
execute as @p[tag=MCF_Host,scores={Select22=1}] run function mcf:system/setting/choose_phase_of_war_time/change_to
execute as @p[tag=MCF_Host,scores={Select23=1}] run function mcf:system/setting/choose_phase_of_war_time/change_to
execute as @p[tag=MCF_Host,scores={Select24=1}] run function mcf:system/setting/choose_phase_of_war_time/change_to
execute as @p[tag=MCF_Host,scores={Select25=1}] run function mcf:system/setting/choose_phase_of_war_time/change_to
execute as @p[tag=MCF_Host,scores={Select28=1}] run function mcf:system/setting/choose_phase_of_war_time/select_cancel
execute as @p[tag=MCF_Host,scores={Select31=1}] run function mcf:system/setting/choose_phase_of_war_time/select_reset
execute as @p[tag=MCF_Host,scores={Select34=1}] run function mcf:system/setting/choose_phase_of_war_time/select_ok