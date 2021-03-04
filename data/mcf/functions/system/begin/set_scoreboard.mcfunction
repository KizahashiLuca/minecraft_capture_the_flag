#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Add scoreboards of gamemode
scoreboard objectives add Phase dummy
scoreboard objectives add PrevPhase dummy
scoreboard objectives add Death minecraft.custom:minecraft.deaths
scoreboard objectives add Kill dummy
scoreboard objectives add KillTemp minecraft.custom:minecraft.player_kills
## Add scoreboards of time
scoreboard objectives add Tick dummy
scoreboard objectives add Second dummy
scoreboard objectives add Minute dummy
scoreboard objectives add RestSecond dummy
scoreboard objectives add TotalSecond dummy
scoreboard objectives add 60 dummy
## Add scoreboards for participants
scoreboard objectives add Participant dummy
scoreboard objectives add NumParticipant dummy
## Add scoreboards for setting phase - common
scoreboard objectives add ThrowItem dummy
scoreboard objectives add Select02 dummy
scoreboard objectives add Select03 dummy
scoreboard objectives add Select04 dummy
scoreboard objectives add Select05 dummy
scoreboard objectives add Select06 dummy
scoreboard objectives add Select09 dummy
scoreboard objectives add Select10 dummy
scoreboard objectives add Select11 dummy
scoreboard objectives add Select12 dummy
scoreboard objectives add Select13 dummy
scoreboard objectives add Select14 dummy
scoreboard objectives add Select15 dummy
scoreboard objectives add Select16 dummy
scoreboard objectives add Select17 dummy
scoreboard objectives add Select18 dummy
scoreboard objectives add Select19 dummy
scoreboard objectives add Select20 dummy
scoreboard objectives add Select21 dummy
scoreboard objectives add Select22 dummy
scoreboard objectives add Select23 dummy
scoreboard objectives add Select24 dummy
scoreboard objectives add Select25 dummy
scoreboard objectives add Select26 dummy
scoreboard objectives add Select28 dummy
scoreboard objectives add Select31 dummy
scoreboard objectives add Select34 dummy
scoreboard objectives add Selected dummy
## Add scoreboards for setting phase - choose preparation time
scoreboard objectives add 10 dummy
scoreboard objectives add 100 dummy
scoreboard objectives add 1000 dummy
scoreboard objectives add 10000 dummy
scoreboard objectives add digit_0001 dummy
scoreboard objectives add digit_0010 dummy
scoreboard objectives add digit_0100 dummy
scoreboard objectives add digit_1000 dummy
scoreboard objectives add TimeOfPrepare dummy
scoreboard objectives add TimeOfPreparePrv dummy
## Add scoreboards for setting phase - choose area
scoreboard objectives add WorldBorder dummy
scoreboard objectives add WorldBorderPrv dummy
## Add scoreboards for setting phase - choose difficulty
scoreboard objectives add Difficulty dummy
scoreboard objectives add DifficultyPrv dummy
## Add scoreboards for setting phase - choose war time
scoreboard objectives add TimeOfWar dummy
scoreboard objectives add TimeOfWarPrv dummy
## Add scoreboards for setting phase - choose gamerule
scoreboard objectives add WeatherCycle dummy
scoreboard objectives add DaylightCycle dummy
scoreboard objectives add WeatherCyclePrv dummy
scoreboard objectives add DaylightCyclePrv dummy
## Add scoreboards for setting phase - choose team setting
scoreboard objectives add friendlyFire dummy
scoreboard objectives add collisionRule dummy
scoreboard objectives add VisibleName dummy
scoreboard objectives add VisibleInvis dummy
scoreboard objectives add VisibleDeath dummy
scoreboard objectives add SetTeamManual dummy
scoreboard objectives add friendlyFirePrv dummy
scoreboard objectives add collisionRulePrv dummy
scoreboard objectives add VisibleNamePrv dummy
scoreboard objectives add VisibleInvisPrv dummy
scoreboard objectives add VisibleDeathPrv dummy
scoreboard objectives add SetTeamManualPrv dummy

## Set scoreboards for game phase
scoreboard players set #mcf Phase 0
scoreboard players set #mcf PrevPhase 0
scoreboard players set @a Phase 0
scoreboard players set @a Death 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0
## Set scoreboards of time
scoreboard players set #mcf Tick 0
scoreboard players set #mcf Second 0
scoreboard players set #mcf Minute 0
scoreboard players set #mcf RestSecond 0
scoreboard players set #mcf TotalSecond 0
scoreboard players set #mcf 60 60
## Set scoreboards for participants
scoreboard players set #mcf Participant 0
scoreboard players set #mcf NumParticipant 0
scoreboard players set @a Participant 0
scoreboard players set @a NumParticipant 0
## Set scoreboards for setting phase - common
scoreboard players set @a ThrowItem 0
scoreboard players set @a Select02 0
scoreboard players set @a Select03 0
scoreboard players set @a Select04 0
scoreboard players set @a Select05 0
scoreboard players set @a Select06 0
scoreboard players set @a Select09 0
scoreboard players set @a Select10 0
scoreboard players set @a Select11 0
scoreboard players set @a Select12 0
scoreboard players set @a Select13 0
scoreboard players set @a Select14 0
scoreboard players set @a Select15 0
scoreboard players set @a Select16 0
scoreboard players set @a Select17 0
scoreboard players set @a Select18 0
scoreboard players set @a Select19 0
scoreboard players set @a Select20 0
scoreboard players set @a Select21 0
scoreboard players set @a Select22 0
scoreboard players set @a Select23 0
scoreboard players set @a Select24 0
scoreboard players set @a Select25 0
scoreboard players set @a Select26 0
scoreboard players set @a Select28 0
scoreboard players set @a Select31 0
scoreboard players set @a Select34 0
scoreboard players set @a Selected 0
## Set scoreboards for setting phase - choose preparation time
scoreboard players set #mcf 10 10
scoreboard players set #mcf 100 100
scoreboard players set #mcf 1000 1000
scoreboard players set #mcf 10000 10000
scoreboard players set #mcf TimeOfPrepare 100
scoreboard players set #mcf TimeOfPreparePrv 100
scoreboard players operation #mcf Minute = #mcf TimeOfPrepare
## Set scoreboards for setting phase - choose area
scoreboard players set #mcf WorldBorder 1000
scoreboard players set #mcf WorldBorderPrv 1000
scoreboard players set #mcf WorldBorderEnd 0
## Set scoreboards for setting phase - choose difficulty
scoreboard players set #mcf Difficulty 2
scoreboard players set #mcf DifficultyPrv 2
## Set scoreboards for setting phase - choose war time
scoreboard players set #mcf TimeOfWar 100
scoreboard players set #mcf TimeOfWarPrv 100
## Set scoreboards for setting phase - choose gamerule
scoreboard players set #mcf WeatherCycle 1
scoreboard players set #mcf DaylightCycle 1
scoreboard players set #mcf WeatherCyclePrv 1
scoreboard players set #mcf DaylightCyclePrv 1
## Set scoreboards for setting phase - choose team setting
scoreboard players set #mcf friendlyFire 1
scoreboard players set #mcf collisionRule 1
scoreboard players set #mcf VisibleName 0
scoreboard players set #mcf VisibleInvis 0
scoreboard players set #mcf VisibleDeath 0
scoreboard players set #mcf SetTeamManual 0
scoreboard players set #mcf friendlyFirePrv 1
scoreboard players set #mcf collisionRulePrv 1
scoreboard players set #mcf VisibleNamePrv 0
scoreboard players set #mcf VisibleInvisPrv 0
scoreboard players set #mcf VisibleDeathPrv 0
scoreboard players set #mcf SetTeamManualPrv 0

## Tmp
scoreboard objectives setdisplay sidebar Point