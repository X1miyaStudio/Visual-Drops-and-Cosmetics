scoreboard players operation @s x1di.id = @e[type=minecraft:item,tag=x1di.source_item,limit=1] x1di.id
scoreboard players operation @s x1di.yaw = @e[type=minecraft:item,tag=x1di.source_item,limit=1] x1di.yaw

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s x1di.yaw
data modify entity @s item set from entity @e[type=minecraft:item,tag=x1di.source_item,limit=1] Item
execute if entity @e[type=minecraft:item,tag=x1di.source_item,tag=x1di.locked_drop,limit=1] run tag @s add x1di.locked
execute if entity @s[tag=x1di.locked] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=x1di.locked] run team join x1di.glow_lock @s
execute if entity @s[tag=x1di.locked] run scoreboard players operation @s x1di.glow = $glow_time x1di.tmp

tag @s remove x1di.new
