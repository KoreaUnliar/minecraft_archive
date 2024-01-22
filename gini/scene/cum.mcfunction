scoreboard players add #avtime_end timer 1
particle minecraft:white_ash 1258.5 65.0 -1592.55 0.3 0.01 0.3 100 100 normal
playsound minecraft:block.honey_block.step master @a ~ ~ ~ 100 1 1
execute if score #avtime_end timer matches 40.. run function unliar:gini/reset_gini
execute if score #avtime_end timer matches 40.. run scoreboard players set #suc.cum cmd.suc 1
#semen
# execute if score suc.cum cmd.suc matches 1.. run setblock 1260 64 -1589 air
# #edit bossbar
# execute if score suc.cum cmd.suc matches 1.. run setblock 1262 64 -1589 air

execute if score #suc.cum cmd.suc matches 1.. run scoreboard players reset #avtime_s timer
execute if score #suc.cum cmd.suc matches 1.. run scoreboard players reset #av cmd.count
execute if score #suc.cum cmd.suc matches 1.. run scoreboard players reset #avtime_end timer
execute if score #suc.cum cmd.suc matches 1.. run execute as @e[tag=gini] at @s run tellraw @p [{"text":"\n\n마..만족하셨나요오...?","color":"gold"}]
execute if score #suc.cum cmd.suc matches 1.. run setblock 1264 64 -1589 air
execute if score #suc.cum cmd.suc matches 1.. run scoreboard players reset #suc.cum cmd.suc