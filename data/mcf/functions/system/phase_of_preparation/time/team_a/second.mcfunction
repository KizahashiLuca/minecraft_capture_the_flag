#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Calculate time every minute
execute if score #mcf_red Second matches 0 run function mcf:system/phase_of_preparation/time/team_a/minute

## Calculate time every second
execute if score #mcf_red Second matches 0 run scoreboard players set #mcf_red Second 60
execute if score #mcf_red Second matches 1.. run scoreboard players remove #mcf_red Second 1

## Set scoreboard
scoreboard players operation #mcf_red RestSecond = #mcf_red Minute
scoreboard players operation #mcf_red RestSecond *= #mcf_red 60
scoreboard players operation #mcf_red RestSecond += #mcf_red Second

## Store time for bossbar
bossbar set minecraft:bossbar_red players @a[team=TeamA]
execute if score #mcf_red Minute matches 0.. run bossbar set minecraft:bossbar_red name ["",{"text":"PREPARATION TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf_red","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf_red","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]
execute store result bossbar minecraft:bossbar_red value run scoreboard players get #mcf_red RestSecond

## Calculate number of player
scoreboard players set #mcf_red NumParticipantTp 0
execute as @a[team=TeamA] run scoreboard players add #mcf_red NumParticipantTp 1
scoreboard players operation #mcf_red NumParticipantTp *= #mcf 1000
scoreboard players operation #mcf_red NumParticipantTp /= #mcf_red NumParticipant

scoreboard players set #mcf_red CountTick 20
execute if score #mcf_red NumParticipantTp matches ..900 run scoreboard players set #mcf_red CountTick 22
execute if score #mcf_red NumParticipantTp matches ..800 run scoreboard players set #mcf_red CountTick 25
execute if score #mcf_red NumParticipantTp matches ..700 run scoreboard players set #mcf_red CountTick 28
execute if score #mcf_red NumParticipantTp matches ..667 run scoreboard players set #mcf_red CountTick 30
execute if score #mcf_red NumParticipantTp matches ..600 run scoreboard players set #mcf_red CountTick 33
execute if score #mcf_red NumParticipantTp matches ..500 run scoreboard players set #mcf_red CountTick 40
execute if score #mcf_red NumParticipantTp matches ..400 run scoreboard players set #mcf_red CountTick 50
execute if score #mcf_red NumParticipantTp matches ..333 run scoreboard players set #mcf_red CountTick 60
execute if score #mcf_red NumParticipantTp matches ..300 run scoreboard players set #mcf_red CountTick 67
execute if score #mcf_red NumParticipantTp matches ..200 run scoreboard players set #mcf_red CountTick 100
execute if score #mcf_red NumParticipantTp matches ..100 run scoreboard players set #mcf_red CountTick 200

## Process the sound system
execute if score #mcf_red Minute matches 0 if score #mcf_red Second matches 4..10 as @a[team=TeamA] at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if score #mcf_red Minute matches 0 if score #mcf_red Second matches 1..3 as @a[team=TeamA] at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score #mcf_red Minute matches 0 if score #mcf_red Second matches 0 as @a[team=TeamA] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1