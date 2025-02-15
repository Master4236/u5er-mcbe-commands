tag @a remove forward
tag @a remove backward
tag @a remove leftward
tag @a remove rightward
tag @a remove upward
tag @a remove downward
execute as @a at @s rotated ~ 0 positioned ^^^-30.001 if entity @e[name=SimulationBat,y=~300,r=30] run tag @s add forward
execute as @a at @s rotated ~ 0 positioned ^^^30.001 if entity @e[name=SimulationBat,y=~300,r=30] run tag @s add backward
execute as @a at @s rotated ~ 0 positioned ^-30.001^^ if entity @e[name=SimulationBat,y=~300,r=30] run tag @s add leftward
execute as @a at @s rotated ~ 0 positioned ^30.001^^ if entity @e[name=SimulationBat,y=~300,r=30] run tag @s add rightward
execute as @a at @s rotated ~ 0 positioned ^^-30.001^ if entity @e[name=SimulationBat,y=~300,r=30] run tag @s add upward
execute as @a at @s rotated ~ 0 positioned ^^30.001^ if entity @e[name=SimulationBat,y=~300,r=30] run tag @s add downward
kill @e[name=SimulationBat]
execute at @a run summon bat SimulationBat ~~300~

#forward前 backward后 leftward左 rightward右 upward上 downward下
#此版本为国际网易通用，但是只建议国际版使用