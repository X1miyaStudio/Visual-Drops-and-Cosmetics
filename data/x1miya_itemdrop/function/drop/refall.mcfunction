scoreboard players operation $pair x1di.tmp = @s x1di.id
scoreboard players operation $pair_yaw x1di.tmp = @s x1di.yaw

execute as @e[type=minecraft:item_display,tag=x1di.display] if score @s x1di.id = $pair x1di.tmp run tag @s add x1di.refall_source
summon minecraft:item ~ ~0.12 ~ {Tags:["x1di.refall","x1di.new"],PickupDelay:10s,Age:0s,Motion:[0.0d,0.0d,0.0d],Item:{id:"minecraft:stone",count:1}}
execute as @e[type=minecraft:item,tag=x1di.new,distance=..0.5,sort=nearest,limit=1] run scoreboard players operation @s x1di.id = $pair x1di.tmp
execute as @e[type=minecraft:item,tag=x1di.new,distance=..0.5,sort=nearest,limit=1] run scoreboard players operation @s x1di.yaw = $pair_yaw x1di.tmp
execute as @e[type=minecraft:item,tag=x1di.new,distance=..0.5,sort=nearest,limit=1] run data modify entity @s Item set from entity @e[type=minecraft:item_display,tag=x1di.refall_source,limit=1] item
execute if entity @s[tag=x1di.locked] as @e[type=minecraft:item,tag=x1di.new,distance=..0.5,sort=nearest,limit=1] run tag @s add x1di.locked_drop
execute as @e[type=minecraft:item,tag=x1di.new,distance=..0.5,sort=nearest,limit=1] run tag @s remove x1di.new
execute as @e[type=minecraft:item_display,tag=x1di.refall_source] run tag @s remove x1di.refall_source

function x1miya_itemdrop:pair/kill_by_id
