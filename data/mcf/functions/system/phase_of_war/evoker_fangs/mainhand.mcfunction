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
execute store result score @s DamageOfWand run data get entity @s SelectedItem.tag.Damage 1.0

## Replace item
loot replace entity @s[scores={DamageOfWand=25..}] weapon.mainhand loot mcf:phase_of_preparation/air
loot replace entity @s[scores={DamageOfWand=0..24}] weapon.mainhand loot mcf:phase_of_preparation/items/carrot_on_a_stick_mainhand

## Play sound
execute as @s[scores={DamageOfWand=25..}] run playsound entity.item.break player @a ~ ~ ~ 1.0 1.0
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1.0 2.0

## Add a tag
tag @s add MCF_EvokerFangs

## Summon fangs
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MCF_EvokerFangs","MCF_NotSet"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute as @e[type=minecraft:area_effect_cloud,tag=MCF_EvokerFangs,tag=MCF_NotSet,sort=nearest,limit=1] run function mcf:system/phase_of_war/evoker_fangs/set_cloud

## Set evoker fangs
schedule function mcf:system/phase_of_war/evoker_fangs/set_fangs 1t append

## Remove tags
tag @s remove MCF_EvokerFangs
tag @e[type=minecraft:area_effect_cloud,tag=MCF_EvokerFangs,tag=MCF_NotSet] remove MCF_NotSet

## Reset scoreboard
scoreboard players set @s UseCarrotOnStick 0