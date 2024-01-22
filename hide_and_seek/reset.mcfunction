tag @a remove seeker
tag @a remove deathhider
scoreboard players reset @a deathcount
scoreboard players set #hideandseektime1 timer 0
scoreboard players set #hideandseektime2 timer 0
scoreboard players set #hideandseektime3 timer 0
setblock 136 64 -1296 air
execute in minecraft:overworld run tp @a 130.70 64.00 -1283.54 274.36 57.54
effect clear @a
clear @a lime_dye
clear @a red_dye
clear @a white_dye
clear @a diamond_sword