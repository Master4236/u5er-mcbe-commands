scoreboard objectives add sys dummy "§c该玩家已被封禁"
scoreboard objectives setdisplay belowname sys
scoreboard objectives add uid dummy
scoreboard players set ban sys -1
scoreboard players set unban sys -1