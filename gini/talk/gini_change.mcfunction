execute as @e[tag=gini] at @s if entity @e[tag=gini,type=villager] unless score #suc cmd.suc matches 1.. run function unliar:gini/change_gini/girl
execute as @e[tag=gini] at @s if entity @e[tag=gini,type=armor_stand] unless score #suc cmd.suc matches 1.. run function unliar:gini/change_gini/villager
execute as @e[tag=gini] at @s run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 100 1 1
execute if score #suc cmd.suc matches 1.. run scoreboard players reset #suc cmd.suc