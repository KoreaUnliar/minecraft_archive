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