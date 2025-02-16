execute if score @s uid = ban sys run tag @s add ban
execute if score @s uid = ban sys run tellraw @a {"rawtext":[{"text":"§c "},{"selector":"@s"},{"text":" 被管理员封禁"}]}
execute if score @s uid = ban sys run gamemode adventure @s
execute if score @s uid = ban sys run effect @s weakness 99999 255 true
execute if score @s uid = ban sys run scoreboard players operation @s sys = @s uid