# X1miyaStudio Dynamic Item Drop & Interaction
scoreboard objectives add x1di.id dummy
scoreboard objectives add x1di.life dummy
scoreboard objectives add x1di.tmp dummy
scoreboard objectives add x1di.yaw dummy
scoreboard objectives add x1di.lock_key trigger
scoreboard objectives add x1di.glow dummy

scoreboard players add $next_id x1di.id 0
scoreboard players set $rot_mul x1di.tmp 73
scoreboard players set $rot_mod x1di.tmp 360
scoreboard players set $life_max x1di.tmp 6000
scoreboard players set $glow_time x1di.tmp 60

team add x1di.glow_lock
team add x1di.glow_unlock
team modify x1di.glow_lock color green
team modify x1di.glow_unlock color red
