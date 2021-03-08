#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set gamerules
execute in minecraft:overworld run gamerule announceAdvancements false
execute in minecraft:the_nether run gamerule announceAdvancements false
execute in minecraft:the_end run gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule disableRaids false
execute if score #mcf DaylightCycle matches 1 run gamerule doDaylightCycle true
execute if score #mcf DaylightCycle matches 0 run gamerule doDaylightCycle false
gamerule doEntityDrops true
gamerule doFireTick true
gamerule doInsomnia true
gamerule doImmediateRespawn true
gamerule doLimitedCrafting false
gamerule doMobLoot true
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doTileDrops true
gamerule doTraderSpawning true
execute if score #mcf WeatherCycle matches 1 run gamerule doWeatherCycle true
execute if score #mcf WeatherCycle matches 0 run gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage true
gamerule fireDamage true
gamerule forgiveDeadPlayers true
# gamerule freezeDamage‌ true
gamerule keepInventory false
gamerule logAdminCommands true
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 24
gamerule mobGriefing true
gamerule naturalRegeneration true
# gamerule playersSleepingPercentage 100
gamerule randomTickSpeed 3
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false
gamerule showDeathMessages true
gamerule spawnRadius 10
execute in minecraft:overworld run gamerule spectatorsGenerateChunks true
execute in minecraft:the_nether run gamerule spectatorsGenerateChunks true
execute in minecraft:the_end run gamerule spectatorsGenerateChunks true
gamerule universalAnger false