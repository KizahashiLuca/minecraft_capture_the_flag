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
execute if score #mcf_blue Second matches 0 run function mcf:system/phase_of_preparation/time/team_b/minute

## Calculate time every second
execute if score #mcf_blue Second matches 0 run scoreboard players set #mcf_blue Second 60
execute if score #mcf_blue Second matches 1.. run scoreboard players remove #mcf_blue Second 1

## Set scoreboard
scoreboard players operation #mcf_blue RestSecond = #mcf_blue Minute
scoreboard players operation #mcf_blue RestSecond *= #mcf_blue 60
scoreboard players operation #mcf_blue RestSecond += #mcf_blue Second

## Calculate number of player
scoreboard players set #mcf_blue NumParticipantTp 0
execute as @a[team=TeamB] run scoreboard players add #mcf_blue NumParticipantTp 1
scoreboard players operation #mcf_blue NumParticipantTp *= #mcf 1000
scoreboard players operation #mcf_blue NumParticipantTp /= #mcf_blue NumParticipant

scoreboard players set #mcf_blue CountTick 20
execute if score #mcf_blue NumParticipantTp matches ..900 run scoreboard players set #mcf_blue CountTick 22
execute if score #mcf_blue NumParticipantTp matches ..800 run scoreboard players set #mcf_blue CountTick 25
execute if score #mcf_blue NumParticipantTp matches ..700 run scoreboard players set #mcf_blue CountTick 28
execute if score #mcf_blue NumParticipantTp matches ..667 run scoreboard players set #mcf_blue CountTick 30
execute if score #mcf_blue NumParticipantTp matches ..600 run scoreboard players set #mcf_blue CountTick 33
execute if score #mcf_blue NumParticipantTp matches ..500 run scoreboard players set #mcf_blue CountTick 40
execute if score #mcf_blue NumParticipantTp matches ..400 run scoreboard players set #mcf_blue CountTick 50
execute if score #mcf_blue NumParticipantTp matches ..333 run scoreboard players set #mcf_blue CountTick 60
execute if score #mcf_blue NumParticipantTp matches ..300 run scoreboard players set #mcf_blue CountTick 67
execute if score #mcf_blue NumParticipantTp matches ..200 run scoreboard players set #mcf_blue CountTick 100
execute if score #mcf_blue NumParticipantTp matches ..100 run scoreboard players set #mcf_blue CountTick 200

## Store time for bossbar
bossbar set minecraft:bossbar_blue players @a[team=TeamB]
execute if score #mcf_blue Minute matches 0.. run bossbar set minecraft:bossbar_blue name ["",{"text":"PREPARATION TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf_blue","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf_blue","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]
execute store result bossbar minecraft:bossbar_blue value run scoreboard players get #mcf_blue RestSecond

## Process the sound system
execute if score #mcf_blue Minute matches 0 if score #mcf_blue Second matches 4..10 as @a[team=TeamB] at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if score #mcf_blue Minute matches 0 if score #mcf_blue Second matches 1..3 as @a[team=TeamB] at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score #mcf_blue Minute matches 0 if score #mcf_blue Second matches 0 as @a[team=TeamB] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1