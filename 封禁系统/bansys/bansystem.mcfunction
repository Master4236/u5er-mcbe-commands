#玩家数量
scoreboard players set 玩家数量 sys 0
execute as @a run scoreboard players add 玩家数量 sys 1
#封禁
tag @a[tag=offline] remove offline
tag @r[tag=!ban] add offline
execute as @e[type=armor_stand,scores={sys=1..}] if score @s sys = @p[tag=offline] uid run scoreboard players operation ban sys = @s sys
execute as @e[type=armor_stand,scores={sys=1..}] if score @s sys = @p[tag=offline] uid run kill @s
execute unless score ban sys matches -1 as @a[tag=!ban] run function bansys/bancheck
execute if score failed sys = 玩家数量 sys run summon armor_stand 0 4 0
execute if score failed sys = 玩家数量 sys run scoreboard players reset failed sys
execute unless score failed sys = 玩家数量 sys run scoreboard players reset failed sys
scoreboard players add @e[type=armor_stand] sys 0
scoreboard players operation @e[scores={sys=0},type=armor_stand,x=0,y=4,z=0,r=1] sys = ban sys
execute unless score ban sys matches -1 run scoreboard players set ban sys -1
title @a[tag=ban] actionbar §c你已被封禁
#解封
execute unless score unban sys matches -1 as @a[tag=ban] run function bansys/unbancheck
execute unless score unban sys matches -1 run scoreboard players set unban sys -1
#处罚
inputpermission set @a[tag=ban,haspermission={camera=enabled}] camera disabled
inputpermission set @a[tag=ban,haspermission={movement=enabled}] movement disabled
#uid
scoreboard players add @a uid 0
execute as @a[scores={uid=0}] run scoreboard players add 注册人数 uid 1
execute as @a[scores={uid=0}] run scoreboard players operation @s uid = 注册人数 uid