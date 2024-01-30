scoreboard players add @a[tag=santa] santa_score 1
clear @a[tag=santa] minecraft:player_head 1
execute as @a[tag=santa] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1 1
execute as @a[tag=santa] at @s run kill @e[tag=present_box,distance=0..2,limit=1]