scoreboard players add #avtime timer 1
execute if score #avtime timer matches 20.. run scoreboard players add #avtime_s timer 1
execute if score #avtime timer matches 20.. run scoreboard players reset #avtime timer
execute as @e[tag=work_armor] at @s if score #avtime_s timer matches 1.. unless entity @e[tag=pos_1,tag=work_armor] run tag @s add pos_1
execute as @e[tag=work_armor,tag=pos_1] at @s if score #avtime_s timer matches 1.. store result score #pos1_suc cmd.suc run tp @s ~ ~ ~0.5
execute as @e[tag=work_armor,tag=pos_1] at @s if score #avtime_s timer matches 1.. if entity @e[tag=gini,type=villager] run playsound minecraft:entity.villager.ambient master @p ~ ~ ~ 100 1.65 1
execute as @e[tag=work_armor,tag=pos_1] at @s if score #avtime_s timer matches 1.. if entity @e[tag=gini,tag=gini_body,type=armor_stand] run playsound minecraft:block.honey_block.step master @a ~ ~ ~ 100 1 1
execute if score #avtime_s timer matches 1.. if score #pos1_suc cmd.suc matches 1.. run scoreboard players reset #avtime_s timer
execute as @e[tag=work_armor] at @s if score #pos1_suc cmd.suc matches 1.. store result score #suc.semen cmd.suc run scoreboard players reset #pos1_suc cmd.suc
execute if score #suc.semen cmd.suc matches 1.. run schedule function unliar:gini/scene/work_armor 5t append
execute if score #suc.semen cmd.suc matches 1.. run scoreboard players reset #suc.semen cmd.suc
function unliar:gini/scene/edit_bossbar