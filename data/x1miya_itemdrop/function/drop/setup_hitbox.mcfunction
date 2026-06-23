scoreboard players operation @s x1di.id = @e[type=minecraft:item,tag=x1di.source_item,limit=1] x1di.id
scoreboard players operation @s x1di.yaw = @e[type=minecraft:item,tag=x1di.source_item,limit=1] x1di.yaw
scoreboard players set @s x1di.life 0
execute if entity @e[type=minecraft:item,tag=x1di.source_item,tag=x1di.locked_drop,limit=1] run tag @s add x1di.locked
tag @s remove x1di.new
