#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Calculate time every second
scoreboard players remove #mcf_red Second 1
execute if score #mcf_red Second matches ..-1 run scoreboard players set #mcf_red Second 0

## Set scoreboard
scoreboard players operation #mcf_red RestSecond = #mcf_red Minute
scoreboard players operation #mcf_red RestSecond *= #mcf_red 60
scoreboard players operation #mcf_red RestSecond += #mcf_red Second

## Store time for bossbar
bossbar set minecraft:bossbar_red players @a[team=TeamA]
bossbar set minecraft:bossbar_red name ["",{"text":"PREAPARATION TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf_red","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf_red","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]
execute store result bossbar minecraft:bossbar_red value run scoreboard players get #mcf_red RestSecond

## Process the sound system
execute if score #mcf_red Minute matches 0 if score #mcf_red Second matches 4..10 as @a at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if score #mcf_red Minute matches 0 if score #mcf_red Second matches 1..3 as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score #mcf_red Minute matches 0 if score #mcf_red Second matches 0 as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Calculate time every minute
execute if score #mcf_red Second matches 0 run function mcf:system/phase_of_preparation/time/team_a/minute

## Reset tick
execute unless score #mcf_red Second matches 0 run scoreboard players operation #mcf_red Tick = #mcf_red CountTick