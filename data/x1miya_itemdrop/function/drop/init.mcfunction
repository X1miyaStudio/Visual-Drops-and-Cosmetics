tag @s add x1di.source_item

summon minecraft:item_display ~ ~0.025 ~ {Tags:["x1di.display","x1di.new"],item:{id:"minecraft:stone",count:1},item_display:"ground",billboard:"fixed",brightness:{sky:15,block:15},view_range:0.6f,shadow_radius:0.08f,shadow_strength:0.28f,transformation:{translation:[0.0f,0.0f,0.0f],scale:[0.8f,0.8f,0.8f],left_rotation:[0.7071f,0.0f,0.0f,0.7071f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:interaction ~ ~0.025 ~ {Tags:["x1di.hitbox","x1di.new"],width:0.5f,height:0.5f,response:1b}

execute as @e[type=minecraft:item_display,tag=x1di.new,distance=..0.35,sort=nearest,limit=1] run function x1miya_itemdrop:drop/setup_display
execute as @e[type=minecraft:interaction,tag=x1di.new,distance=..0.35,sort=nearest,limit=1] run function x1miya_itemdrop:drop/setup_hitbox

kill @s
