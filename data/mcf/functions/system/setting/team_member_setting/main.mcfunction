#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MCFsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mcf:system/setting/team_member_setting/drop

## Detect inventory
scoreboard players set @p[tag=MCF_Host] Selected 1
scoreboard players set @p[tag=MCF_Host] Select03 1
scoreboard players set @p[tag=MCF_Host] Select05 1
scoreboard players set @p[tag=MCF_Host] Select21 1
scoreboard players set @p[tag=MCF_Host] Select23 1
scoreboard players set @p[tag=MCF_Host] Select28 1
scoreboard players set @p[tag=MCF_Host] Select31 1
execute if score #mcf TeamBoolean matches 0 run scoreboard players set @p[tag=MCF_Host] Select34 1

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:3b,id:"minecraft:pink_dye",tag:{Tags:["MCFsetting","team_a","host_inventory"]}}]}] Select03 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:5b,id:"minecraft:light_blue_dye",tag:{Tags:["MCFsetting","team_b","host_inventory"]}}]}] Select05 0

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{Tags:["MCFsetting","team_a"]}}]}] Selected 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{Tags:["MCFsetting","team_b"]}}]}] Selected 0

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:21b,id:"minecraft:pink_dye",tag:{Tags:["MCFsetting","team_a","host_inventory"]}}]}] Select21 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:23b,id:"minecraft:light_blue_dye",tag:{Tags:["MCFsetting","team_b","host_inventory"]}}]}] Select23 0

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MCFsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{Tags:["MCFsetting","reset"]}}]}] Select31 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MCFsetting","determine"]}}]}] Select34 0

## Change to each phase
execute as @p[tag=MCF_Host,scores={Selected=1}] run function mcf:system/setting/team_member_setting/change_to
execute as @p[tag=MCF_Host,scores={Select03=1}] run function mcf:system/setting/team_member_setting/change_to
execute as @p[tag=MCF_Host,scores={Select05=1}] run function mcf:system/setting/team_member_setting/change_to
execute as @p[tag=MCF_Host,scores={Select21=1}] run function mcf:system/setting/team_member_setting/set_team_with_hit/team_a
execute as @p[tag=MCF_Host,scores={Select23=1}] run function mcf:system/setting/team_member_setting/set_team_with_hit/team_b
execute as @p[tag=MCF_Host,scores={Select28=1}] run function mcf:system/setting/team_member_setting/game_cancel
execute as @p[tag=MCF_Host,scores={Select31=1}] run function mcf:system/setting/team_member_setting/select_reset
execute as @p[tag=MCF_Host,scores={Select34=1}] run function mcf:system/setting/team_member_setting/random_member_set