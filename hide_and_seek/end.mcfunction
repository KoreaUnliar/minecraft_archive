execute as @a[tag=hider,scores={deathcount=1..}] at @s run tag @s add deathhider
execute as @a[tag=deathhider] at @s run title @s title [{"text":"죽으셨습니다!","color":"yellow"}]
execute as @a[tag=deathhider] at @s run gamemode spectator @s
execute as @a[tag=deathhider] at @s run tag @s remove hider
execute unless entity @e[tag=hider] store success score #suc cmd.suc run title @a title [{"text":"게임종료!","color":"red"}]
execute if score #suc cmd.suc matches 1.. run function hide_and_seek:reset
execute if score #suc cmd.suc matches 1.. run scoreboard players reset #suc cmd.suc