execute at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["x1di.internal","x1di.pickup_probe","x1di.new"],PickupDelay:0s,Age:0s,Item:{id:"minecraft:stone",count:1}}

execute at @s as @e[type=minecraft:item,tag=x1di.new,distance=..0.6,sort=nearest,limit=1] run scoreboard players operation @s x1di.id = $pair x1di.tmp
execute at @s as @e[type=minecraft:item,tag=x1di.new,distance=..0.6,sort=nearest,limit=1] run data modify entity @s Item set from entity @e[type=minecraft:item_display,tag=x1di.source,limit=1] item
execute at @s as @e[type=minecraft:item,tag=x1di.new,distance=..0.6,sort=nearest,limit=1] store result score @s x1di.tmp run data get entity @e[type=minecraft:item_display,tag=x1di.source,limit=1] item.count
execute at @s run data modify entity @e[type=minecraft:item,tag=x1di.new,distance=..0.6,sort=nearest,limit=1] Owner set from entity @s UUID
execute at @s run tag @e[type=minecraft:item,tag=x1di.new,distance=..0.6,sort=nearest,limit=1] remove x1di.new
