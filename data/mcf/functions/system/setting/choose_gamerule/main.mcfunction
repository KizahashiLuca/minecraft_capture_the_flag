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
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mcf:system/setting/choose_gamerule/drop

## Detect inventory
scoreboard players set @p[tag=MCF_Host] Select12 1
scoreboard players set @p[tag=MCF_Host] Select13 1
scoreboard players set @p[tag=MCF_Host] Select14 1
scoreboard players set @p[tag=MCF_Host] Select21 1
scoreboard players set @p[tag=MCF_Host] Select22 1
scoreboard players set @p[tag=MCF_Host] Select23 1
scoreboard players set @p[tag=MCF_Host] Select28 1
scoreboard players set @p[tag=MCF_Host] Select31 1
scoreboard players set @p[tag=MCF_Host] Select34 1

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:21b,id:"minecraft:tube_coral_fan",tag:{Tags:["MCFsetting","weather_cycle"]}}]}] Select21 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:22b,id:"minecraft:fire_coral_fan",tag:{Tags:["MCFsetting","daylight_cycle"]}}]}] Select22 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:23b,id:"minecraft:brain_coral_fan",tag:{Tags:["MCFsetting","do_nightvision"]}}]}] Select23 0

scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MCFsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{Tags:["MCFsetting","reset"]}}]}] Select31 0
scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MCFsetting","determine"]}}]}] Select34 0

execute if score #mcf WeatherCycle matches 0 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:12b,id:"minecraft:redstone_lamp",tag:{Tags:["MCFsetting","off"]}}]}] Select12 0
execute if score #mcf WeatherCycle matches 1 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:12b,id:"minecraft:glowstone",tag:{Tags:["MCFsetting","on"]}}]}] Select12 0
execute if score #mcf DaylightCycle matches 0 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:13b,id:"minecraft:redstone_lamp",tag:{Tags:["MCFsetting","off"]}}]}] Select13 0
execute if score #mcf DaylightCycle matches 1 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:13b,id:"minecraft:glowstone",tag:{Tags:["MCFsetting","on"]}}]}] Select13 0
execute if score #mcf DoNightVision matches 0 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:14b,id:"minecraft:redstone_lamp",tag:{Tags:["MCFsetting","off"]}}]}] Select14 0
execute if score #mcf DoNightVision matches 1 run scoreboard players set @p[tag=MCF_Host,nbt={Inventory:[{Slot:14b,id:"minecraft:glowstone",tag:{Tags:["MCFsetting","on"]}}]}] Select14 0

## Change to each phase
execute as @p[tag=MCF_Host,scores={Select12=1}] run function mcf:system/setting/choose_gamerule/change_to
execute as @p[tag=MCF_Host,scores={Select14=1}] run function mcf:system/setting/choose_gamerule/change_to
execute as @p[tag=MCF_Host,scores={Select21=1}] run function mcf:system/setting/choose_gamerule/select_weather_cycle
execute as @p[tag=MCF_Host,scores={Select22=1}] run function mcf:system/setting/choose_gamerule/select_daylight_cycle
execute as @p[tag=MCF_Host,scores={Select23=1}] run function mcf:system/setting/choose_gamerule/select_do_nightvision
execute as @p[tag=MCF_Host,scores={Select28=1}] run function mcf:system/setting/choose_gamerule/select_cancel
execute as @p[tag=MCF_Host,scores={Select31=1}] run function mcf:system/setting/choose_gamerule/select_reset
execute as @p[tag=MCF_Host,scores={Select34=1}] run function mcf:system/setting/choose_gamerule/select_ok