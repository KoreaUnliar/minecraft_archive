execute as @e[tag=work_armor] at @s run tp @s ~ ~ ~-0.5
execute as @e[tag=work_armor] at @s run scoreboard players add #av cmd.count 1
execute as @e[tag=work_armor,tag=pos_1] at @s run tag @s remove pos_1