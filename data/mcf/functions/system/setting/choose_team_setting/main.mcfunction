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
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mcf:system/setting/choose_team_setting/drop

## Detect inventory
scoreboard players set @p[tag=MCF_Host] Select10 1
scoreboard players set @p[tag=MCF_Host] Select11 1
scoreboard players set @p[tag=MCF_Host] Select12 1
scoreboard players set @p[tag=MCF_Host] Select13 1
scoreboard players set @p[tag=MCF_Host] Select14 1
scoreboard players set @p[tag=MCF_Host] Select16 1
scoreboard players set @p[tag=MCF_Host] Select19 1
scoreboard players set @p[tag=MCF_Host] Select20 1
scoreboard players set @p[tag=MCF_Host] Select21 1
scoreboard players set @p[tag=MCF_Host] Select22 1
scoreboard players set @p[tag=MCF_Host] Select23 1
scoreboard players set @p[tag=MCF_Host] Select25 1
scoreboard players set @p[tag=MCF_Host] Select28 1
scoreboard players set @p[tag=MCF_Host] Select31 1
scoreboard players set @p[tag=MCF_Host] Select34 1

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:19b,id:"minecraft:wooden_sword",tag:{Tags:["MCFsetting","friendly_fire"]}}]}] Select19 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:20b,id:"minecraft:stone_sword",tag:{Tags:["MCFsetting","collision_rule"]}}]}] Select20 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:21b,id:"minecraft:golden_sword",tag:{Tags:["MCFsetting","nametag_visibility"]}}]}] Select21 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:22b,id:"minecraft:iron_sword",tag:{Tags:["MCFsetting","see_friendly_invisibles"]}}]}] Select22 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:23b,id:"minecraft:diamond_sword",tag:{Tags:["MCFsetting","death_message_visibility"]}}]}] Select23 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:25b,id:"minecraft:jack_o_lantern",tag:{Tags:["MCFsetting","set_team_member_manual"]}}]}] Select25 0

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MCFsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{Tags:["MCFsetting","reset"]}}]}] Select31 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MCFsetting","determine"]}}]}] Select34 0

execute if score #mcf friendlyFire matches 0 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:10b,id:"minecraft:redstone_lamp",tag:{Tags:["MCFsetting","off"]}}]}] Select10 0
execute if score #mcf friendlyFire matches 1 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:10b,id:"minecraft:glowstone",tag:{Tags:["MCFsetting","on"]}}]}] Select10 0

execute if score #mcf collisionRule matches 0 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:11b,id:"minecraft:redstone_lamp",tag:{Tags:["MCFsetting","off"]}}]}] Select11 0
execute if score #mcf collisionRule matches 1 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:11b,id:"minecraft:glowstone",tag:{Tags:["MCFsetting","on"]}}]}] Select11 0

execute if score #mcf VisibleName matches 0 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:12b,id:"minecraft:redstone_lamp",tag:{Tags:["MCFsetting","off"]}}]}] Select12 0
execute if score #mcf VisibleName matches 1 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:12b,id:"minecraft:glowstone",tag:{Tags:["MCFsetting","on"]}}]}] Select12 0

execute if score #mcf VisibleInvis matches 0 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:13b,id:"minecraft:redstone_lamp",tag:{Tags:["MCFsetting","off"]}}]}] Select13 0
execute if score #mcf VisibleInvis matches 1 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:13b,id:"minecraft:glowstone",tag:{Tags:["MCFsetting","on"]}}]}] Select13 0

execute if score #mcf VisibleDeath matches 0 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:14b,id:"minecraft:redstone_lamp",tag:{Tags:["MCFsetting","off"]}}]}] Select14 0
execute if score #mcf VisibleDeath matches 1 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:14b,id:"minecraft:glowstone",tag:{Tags:["MCFsetting","on"]}}]}] Select14 0

execute if score #mcf SetTeamManual matches 0 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:16b,id:"minecraft:redstone_lamp",tag:{Tags:["MCFsetting","off"]}}]}] Select16 0
execute if score #mcf SetTeamManual matches 1 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:16b,id:"minecraft:glowstone",tag:{Tags:["MCFsetting","on"]}}]}] Select16 0

## Change to each phase
execute as @p[tag=MCF_Host,scores={Select10=1}] run function mcf:system/setting/choose_team_setting/select_friendly_fire
execute as @p[tag=MCF_Host,scores={Select11=1}] run function mcf:system/setting/choose_team_setting/select_collision_rule
execute as @p[tag=MCF_Host,scores={Select12=1}] run function mcf:system/setting/choose_team_setting/select_visible_nametag
execute as @p[tag=MCF_Host,scores={Select13=1}] run function mcf:system/setting/choose_team_setting/select_visible_invisible
execute as @p[tag=MCF_Host,scores={Select14=1}] run function mcf:system/setting/choose_team_setting/select_visible_death_message
execute as @p[tag=MCF_Host,scores={Select16=1}] run function mcf:system/setting/choose_team_setting/select_set_team_manual

execute as @p[tag=MCF_Host,scores={Select19=1}] run function mcf:system/setting/choose_team_setting/select_friendly_fire
execute as @p[tag=MCF_Host,scores={Select20=1}] run function mcf:system/setting/choose_team_setting/select_collision_rule
execute as @p[tag=MCF_Host,scores={Select21=1}] run function mcf:system/setting/choose_team_setting/select_visible_nametag
execute as @p[tag=MCF_Host,scores={Select22=1}] run function mcf:system/setting/choose_team_setting/select_visible_invisible
execute as @p[tag=MCF_Host,scores={Select23=1}] run function mcf:system/setting/choose_team_setting/select_visible_death_message
execute as @p[tag=MCF_Host,scores={Select25=1}] run function mcf:system/setting/choose_team_setting/select_set_team_manual
execute as @p[tag=MCF_Host,scores={Select28=1}] run function mcf:system/setting/choose_team_setting/select_cancel
execute as @p[tag=MCF_Host,scores={Select31=1}] run function mcf:system/setting/choose_team_setting/select_reset
execute as @p[tag=MCF_Host,scores={Select34=1}] run function mcf:system/setting/choose_team_setting/select_ok