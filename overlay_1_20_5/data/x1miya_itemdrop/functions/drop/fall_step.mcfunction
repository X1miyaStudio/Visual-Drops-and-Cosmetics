scoreboard players operation $pair x1di.tmp = @s x1di.id

tp @s ~ ~-0.12 ~
execute at @s as @e[type=minecraft:item_display,tag=x1di.display] if score @s x1di.id = $pair x1di.tmp run tp @s ~ ~ ~
