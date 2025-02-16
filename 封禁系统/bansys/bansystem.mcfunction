#封禁
execute as @a[scores={sys=0..},tag=!ban] run scoreboard players operation "ban" sys = @s uid
execute unless score ban sys matches -1 as @a[tag=!ban] run function bansys/bancheck
execute unless score ban sys matches -1 run scoreboard players set ban sys -1
title @a[tag=ban] actionbar §c你已被封禁
#解封
execute as @a[scores={sys=-1},tag=ban] run scoreboard players operation "unban" sys = @s uid
execute unless score unban sys matches -1 as @a[tag=ban] run function bansys/unbancheck
execute unless score unban sys matches -1 run scoreboard players set unban sys -1
#处罚
inputpermission set @a[tag=ban,haspermission={camera=enabled}] camera disabled
inputpermission set @a[tag=ban,haspermission={movement=enabled}] movement disabled