#############################################################
## Minecraft Capture the Flag                              ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 01 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Change gamerules always
gamerule maxCommandChainLength 65536

## Send Title Message
function mcf:system/common/message_begin
function mcf:system/common/message_load
function mcf:system/common/message_end