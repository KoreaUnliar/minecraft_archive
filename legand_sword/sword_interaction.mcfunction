execute as @e[tag=pickup_sword] on target store success score #legend.suc cmd.suc run scoreboard players add #pickup_sword cmd.pickup 1
execute as @e[tag=legend_sword] at @s if score #legend.suc cmd.suc matches 1.. run tp @s ~ ~0.005 ~
execute as @e[tag=legend_sword] at @s if score #legend.suc cmd.suc matches 1.. run playsound minecraft:block.grindstone.use master @p ~ ~ ~ 100 1 1
execute as @e[tag=pickup_sword] at @s run data remove entity @s interaction
execute as @e[tag=legend_sword] at @s if score #legend.suc cmd.suc matches 1.. run scoreboard players reset #legend.suc cmd.suc


