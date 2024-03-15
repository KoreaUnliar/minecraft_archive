#skill_up_down
item replace entity @a container.0 with lime_dye{display:{Name:'{"text":"Up","color":"green","bold":true}'}} 1
item replace entity @a container.1 with red_dye{display:{Name:'{"text":"Down","color":"red","bold":true}'}} 1
execute as @a[nbt={ Inventory:[{id:"minecraft:lime_dye",Count:1b,Slot:-106b, tag:{display:{Name:'{"text":"Up","color":"green","bold":true}'}}}]}] at @s unless block ~ ~2 ~ minecraft:obsidian run tp @s ~ ~3 ~
execute as @a[nbt={ Inventory:[{id:"minecraft:lime_dye",Count:1b,Slot:-106b, tag:{display:{Name:'{"text":"Up","color":"green","bold":true}'}}}]}] at @s run item replace entity @s weapon.offhand with air
execute as @a[nbt={ Inventory:[{id:"minecraft:red_dye",Count:1b,Slot:-106b, tag:{display:{Name:'{"text":"Down","color":"red","bold":true}'}}}]}] at @s unless block ~ ~-1 ~ minecraft:obsidian run tp @s ~ ~-3 ~
execute as @a[nbt={ Inventory:[{id:"minecraft:red_dye",Count:1b,Slot:-106b, tag:{display:{Name:'{"text":"Down","color":"red","bold":true}'}}}]}] at @s run item replace entity @s weapon.offhand with air
item replace entity @a[tag=seeker] container.2 with white_dye{display:{Name:'{"text":"Light","color":"white","bold":true}'}} 1
execute as @a[nbt={ Inventory:[{id:"minecraft:white_dye",Count:1b,Slot:-106b, tag:{display:{Name:'{"text":"Light","color":"white","bold":true}'}}}]}] at @s run effect give @a[tag=hider] minecraft:glowing 1 10 true
execute as @a[nbt={ Inventory:[{id:"minecraft:white_dye",Count:1b,Slot:-106b, tag:{display:{Name:'{"text":"Light","color":"white","bold":true}'}}}]}] at @s run item replace entity @s weapon.offhand with air
item replace entity @a[tag=seeker] container.8 with diamond_sword{display:{Name:'{"text":"술래의 검","color":"gold","bold":true}'}, Enchantments:[{id:"minecraft:sharpness",lvl:100s}]} 1
execute as @a[nbt={ Inventory:[{id:"minecraft:iron_sword",Count:1b,Slot:-106b, tag:{display:{Name:'{"text":"술래의 검","color":"gold","bold":true}'}}}]}] at @s run item replace entity @s weapon.offhand with air

#timer
scoreboard players add #hideandseektime1 timer 1
execute if score #hideandseektime1 timer matches 2.. run scoreboard players add #hideandseektime2 timer 1
execute if score #hideandseektime1 timer matches 2.. run scoreboard players set #hideandseektime1 timer 0
execute if score #hideandseektime2 timer matches 10.. run scoreboard players add #hideandseektime3 timer 1
execute if score #hideandseektime2 timer matches 10.. run scoreboard players set #hideandseektime2 timer 0
title @a actionbar [{"text": "숨는자가 ","color": "aqua"},{"text":"살아남은 시간: ","color":"green","bold":true},{"score":{"name":"#hideandseektime3","objective":"timer"},"color":"gold"},{"text":"."},{"score":{"name":"#hideandseektime2","objective":"timer"},"color":"gold"}]


#end
execute as @a[tag=hider,scores={deathcount=1..}] at @s run tag @s add deathhider
execute as @a[tag=deathhider] at @s run title @s title [{"text":"죽으셨습니다!","color":"yellow"}]
execute as @a[tag=deathhider] at @s run gamemode spectator @s
execute as @a[tag=deathhider] at @s run tag @s remove hider
execute unless entity @e[tag=hider] store success score #suc cmd.suc run title @a title [{"text":"게임종료!","color":"red"}]
execute if score #suc cmd.suc matches 1.. run function hide_and_seek:reset
execute if score #suc cmd.suc matches 1.. run scoreboard players reset #suc cmd.suc