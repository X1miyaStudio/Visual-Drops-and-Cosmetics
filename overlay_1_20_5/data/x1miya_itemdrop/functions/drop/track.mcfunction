scoreboard players add $next_id x1di.id 1
scoreboard players operation @s x1di.id = $next_id x1di.id

scoreboard players operation @s x1di.yaw = @s x1di.id
scoreboard players operation @s x1di.yaw *= $rot_mul x1di.tmp
scoreboard players operation @s x1di.yaw %= $rot_mod x1di.tmp

execute if entity @a[distance=..8,sort=nearest,limit=1] store result score @s x1di.yaw run data get entity @a[distance=..8,sort=nearest,limit=1] Rotation[0]
