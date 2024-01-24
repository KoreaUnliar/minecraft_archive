spreadplayers 4 -1452 1 4 false @e[tag=spawn_anvil_armor]
execute as @e[tag=spawn_anvil_armor] at @s run summon falling_block ~ ~-2 ~ {Tags:["kill_anvil"],BlockState:{"Name":"minecraft:anvil"},Time:1}
scoreboard players reset #anvil_spawn_time1 timer
scoreboard players reset #anvil_spawn_time2 timer