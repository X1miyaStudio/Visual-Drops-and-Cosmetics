function x1miya_itemdrop:pickup/settle
scoreboard players enable @a x1di.lock_key
execute as @a[scores={x1di.lock_key=1..}] run function x1miya_itemdrop:tool/trigger_lock_key
execute as @e[type=minecraft:item_display,tag=x1di.display] unless score @s x1di.glow = @s x1di.glow run function x1miya_itemdrop:pair/glow_clear
execute as @e[type=minecraft:item_display,tag=x1di.display,scores={x1di.glow=1..}] run function x1miya_itemdrop:pair/glow_tick

execute as @e[type=minecraft:item,tag=!x1di.internal] at @s unless score @s x1di.id = @s x1di.id run function x1miya_itemdrop:drop/track
execute as @e[type=minecraft:item,tag=!x1di.internal,tag=x1di.landed,nbt={OnGround:1b}] at @s run function x1miya_itemdrop:drop/init
execute as @e[type=minecraft:item,tag=!x1di.internal,tag=x1di.landed,nbt={OnGround:0b}] run tag @s remove x1di.landed
execute as @e[type=minecraft:item,tag=!x1di.internal,tag=!x1di.landed,nbt={OnGround:1b}] run tag @s add x1di.landed

execute as @e[type=minecraft:interaction,tag=x1di.hitbox,tag=!x1di.pending] at @s if data entity @s interaction run function x1miya_itemdrop:pickup/start
execute as @e[type=minecraft:interaction,tag=x1di.hitbox,tag=!x1di.pending] at @s if data entity @s attack run function x1miya_itemdrop:interaction/attack
execute as @e[type=minecraft:interaction,tag=x1di.hitbox,tag=!x1di.pending] at @s run function x1miya_itemdrop:pair/tick
