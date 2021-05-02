#############################################################
## Minecraft Capture the Flag                              ##
##   MC-Version: JE 1.16.5                                 ##
##   Author    : @KizahashiLuca                            ##
##   Date      : 01 Mar 2021                               ##
##   Version   : α-0.1                                     ##
## (C) 2021 KizahashiLuca.                                 ##
## This work is licensed under a CC BY-SA 4.0 license.     ##
#############################################################

## Set bossbars
bossbar add minecraft:bossbar_red ["",{"text":"PREPARATION TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf_red","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf_red","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]
bossbar set minecraft:bossbar_red players @a[team=TeamA]
bossbar set minecraft:bossbar_red name ["",{"text":"PREPARATION TIME","color":"dark_purple","bold":true},{"text":" : "},{"score":{"name":"#mcf_red","objective":"Minute"},"color":"green","bold":true},{"text":" min. "},{"score":{"name":"#mcf_red","objective":"Second"},"color":"green","bold":true},{"text":" sec."}]

## Set scoreboards
scoreboard players operation #mcf_red RestSecond = #mcf_red Minute
scoreboard players operation #mcf_red RestSecond *= #mcf_red 60
scoreboard players operation #mcf_red RestSecond += #mcf_red Second
scoreboard players operation #mcf_red TotalSecond = #mcf_red RestSecond
execute store result bossbar minecraft:bossbar_red max run scoreboard players get #mcf_red TotalSecond
execute store result bossbar minecraft:bossbar_red value run scoreboard players get #mcf_red RestSecond