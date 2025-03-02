scoreboard players add @a[tag=ow] target 0
scoreboard players reset * uid
scoreboard players set "max_players" target -1
execute as @a[tag=!ow] run scoreboard players add "max_players" target 1
scoreboard players set @a[tag=!ow] uid -1
scoreboard players operation @a[tag=!ow] uid -= @a[tag=!ow,scores={uid=-1}] uid
tag @a remove random
tag @r[tag=ow] add random
execute as @a[tag=!ow] if score @s uid = @a[tag=random,c=1] target at @s positioned ~~3~ run camera @a[tag=random,tag=spec] set minecraft:free ease 0.06 linear pos ^^^-1.2 rot ~30~
execute as @a[tag=!ow] if score @s uid = @a[tag=random,c=1] target run titleraw @a[tag=random] actionbar {"rawtext":[{"text":"NAME: "},{"selector":"@s"},{"text":"§r ID:"},{"score":{"name":"@s","objective":"uid"}}]}
execute if entity @a[rxm=89,tag=random,hasitem={item=gold_ingot,location=slot.weapon.mainhand}] as @a[tag=!ow] if score @s uid = @a[tag=random,c=1] target run tellraw @a {"rawtext":[{"text":"  §c§oA player has been banned by Overwatch System"}]}
execute  if entity @a[rxm=89,tag=random,hasitem={item=gold_ingot,location=slot.weapon.mainhand}] as @a[tag=!ow] if score @s uid = @a[tag=random,c=1] target run kill @s
execute as @a[rxm=89,tag=random,hasitem={item=gold_ingot,location=slot.weapon.mainhand}] at @s run tp ~~~ ~ 0
execute as @a[tag=ow] at @s anchored eyes if entity @e[type=snowball,r=1] if score @s target < "max_players" target run scoreboard players add @s target 1
execute as @a[tag=ow,scores={target=1..}] at @s anchored eyes if entity @e[type=egg,r=1] run scoreboard players remove @s target 1
camera @a[tag=ow,tag=!spec] clear
execute at @a[tag=ow] anchored eyes run kill @e[type=ender_pearl,r=1]
execute at @a[tag=ow] anchored eyes run kill @e[type=snowball,r=1]
execute at @a[tag=ow] anchored eyes run kill @e[type=egg,r=1]
replaceitem entity @a[tag=ow] slot.hotbar 0 snowball
replaceitem entity @a[tag=ow] slot.hotbar 1 egg
replaceitem entity @a[tag=ow] slot.hotbar 2 gold_ingot