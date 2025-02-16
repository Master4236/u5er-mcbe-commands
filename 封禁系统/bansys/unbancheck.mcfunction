execute if score @s uid = unban sys run tag @s remove ban
execute if score @s uid = unban sys run tellraw @a[tag=op] {"rawtext":[{"text":"§a "},{"selector":"@s"},{"text":" 被管理员解除封禁"}]}
execute if score @s uid = unban sys run inputpermission set @s camera enabled
execute if score @s uid = unban sys run inputpermission set @s movement enabled
execute if score @s uid = unban sys run gamemode default @s
execute if score @s uid = unban sys run effect @s weakness 0
execute if score @s uid = unban sys run scoreboard players reset @s sys
execute if score @s uid = unban sys run title @s actionbar §a你已被解除封禁