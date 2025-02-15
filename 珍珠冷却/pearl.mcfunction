
#该指令包默认冷却时长为13.3秒(不可更改)并且需要占用经验条
#网易国际通用


#前置指令：/scoreboard objectives add pearl dummy

scoreboard players add @a pearl 0
execute at @e[tag=!marked,type=ender_pearl] run tellraw @a[c=1,scores={pearl=1..}] {"rawtext":[{"text":"§c 你不能使用末影珍珠"}]}
execute at @e[tag=!marked,type=ender_pearl] run give @a[c=1,scores={pearl=1..}] ender_pearl
execute as @e[tag=!marked,type=ender_pearl] at @s if entity @a[c=1,scores={pearl=1..}] run kill @s
execute at @e[tag=!marked,type=ender_pearl] run tag @a[c=1,scores={pearl=0}] add pearl
execute at @e[tag=!marked,type=ender_pearl] run scoreboard players set @a[c=1,scores={pearl=0}] pearl 266
execute as @e[type=ender_pearl] at @s if entity @a[c=1] run tag @s add marked
tellraw @a[tag=pearl,scores={pearl=0}] {"rawtext":[{"text":"冷却已完成"}]}
tag @a[tag=pearl,scores={pearl=0}] remove pearl
xp -999L @a[tag=!pearl]
xp 47L @a[tag=pearl,scores={pearl=266}]
scoreboard players remove @a[scores={pearl=1..}] pearl 1
xp 1 @p[lm=46,l=47,scores={pearl=1..}]