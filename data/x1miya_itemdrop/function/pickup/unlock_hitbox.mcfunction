function x1miya_itemdrop:pair/unlock

execute on target at @s run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.35 0.8
execute on target run title @s actionbar {"translate":"x1miya_itemdrop.message.unlocked","fallback":"XS // item timer restored","color":"dark_green"}
data remove entity @s interaction
