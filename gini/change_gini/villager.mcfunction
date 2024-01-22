execute as @e[tag=gini,type=armor_stand] at @s run data merge entity @s {Invisible:1b,ArmorItems:[{},{},{},{}]}
kill @e[tag=gini,type=minecraft:armor_stand]
summon villager 1260 64 -1593 {Tags:["gini"],Invulnerable:true,NoAI:true,Silent:true}
execute as @e[tag=gini] at @s run tellraw @p [{"text":"\n원래대로 돌아왔어요!","color":"aqua"}]
scoreboard players add #suc cmd.suc 1