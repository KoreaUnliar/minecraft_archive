execute as @e[tag=spawn_inter] at @s unless score #suc cmd.suc matches 1.. run tag @p[limit=1] add pray
execute as @a[tag=pray] at @s unless score #suc cmd.suc matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:beetroot_soup",Count:1b,tag:{blood:1}}}] run tag @a[tag=pray] add give_blood 
execute unless score #suc cmd.suc matches 1.. run damage @a[tag=pray,tag=!give_blood,limit=1] 6 magic
execute unless score #suc cmd.suc matches 1.. run playsound entity.wither.spawn master @a -400 69 55 100 1 1
execute unless score #suc cmd.suc matches 1.. run clear @a[tag=give_blood] beetroot_soup{blood:1} 1
execute unless score #suc cmd.suc matches 1.. run tellraw @a[tag=give_blood] {"text": "음... 피가 맛있군..","color": "red","bold": true}
execute unless score #suc cmd.suc matches 1.. run summon armor_stand -399.5 64 55.5 {Tags:["spawn_effect"],Marker:1b,Invisible:1b}
execute unless score #suc cmd.suc matches 1.. store success score #suc cmd.suc run summon armor_stand -399.5 64 55.5 {Tags:["spawn_effect1"],Marker:1b,Invisible:1b}
execute as @e[tag=spawn_effect] at @s unless entity @a[tag=give_blood] run function unliar:devil_spawn/magic_circles
execute as @e[tag=spawn_effect1] at @s if entity @a[tag=give_blood] run function unliar:devil_spawn/magic_circles2
execute as @e[tag=spawn_effect] at @s if entity @a[tag=give_blood] run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=spawn_effect1] at @s if entity @a[tag=give_blood] run tp @s ~ ~ ~ ~-1 ~
execute as @e[tag=spawn_effect] at @s unless entity @a[tag=give_blood] run tp @s ~ ~ ~ ~1 ~
execute as @e[tag=spawn_effect1] at @s unless entity @a[tag=give_blood] run tp @s ~ ~ ~ ~-5 ~

title @a actionbar [{"text": "악마 소환까지: ","color": "gray"},{"score":{"name": "#wait_time","objective": "timer"},"color": "red"},{"text": "/10","color": "gray"}]

particle minecraft:soul -400 63 54 0 0.7 0 0 10
particle minecraft:soul -399 63 55 0 0.7 0 0 10
particle minecraft:soul -400 63 56 0 0.7 0 0 10
particle minecraft:soul -401 63 55 0 0.7 0 0 10

execute as @e[tag=spawn_effect] at @s if entity @a[tag=give_blood] run particle flame ^3 ^ ^3 0 0.5 0 0 10
execute as @e[tag=spawn_effect] at @s if entity @a[tag=give_blood] run particle flame ^3 ^ ^-3 0 0.5 0 0 10
execute as @e[tag=spawn_effect] at @s if entity @a[tag=give_blood] run particle flame ^-3 ^ ^3 0 0.5 0 0 10
execute as @e[tag=spawn_effect] at @s if entity @a[tag=give_blood] run particle flame ^-3 ^ ^-3 0 0.5 0 0 10

execute as @e[tag=spawn_effect1] at @s unless entity @a[tag=give_blood] run particle flame ^5 ^ ^5 0 0.5 0 0 10
execute as @e[tag=spawn_effect1] at @s unless entity @a[tag=give_blood] run particle flame ^5 ^ ^-5 0 0.5 0 0 10
execute as @e[tag=spawn_effect1] at @s unless entity @a[tag=give_blood] run particle flame ^-5 ^ ^5 0 0.5 0 0 10
execute as @e[tag=spawn_effect1] at @s unless entity @a[tag=give_blood] run particle flame ^-5 ^ ^-5 0 0.5 0 0 10

scoreboard players add #wait_tick timer 1
scoreboard players add #play_tick timer 1
execute if score #play_tick timer matches 20.. run playsound ui.button.click master @a ~ ~ ~ 100 1 1
execute if score #play_tick timer matches 20.. run scoreboard players reset #play_tick

execute if score #wait_time timer matches 3 run scoreboard players reset #charge_sound cmd.suc
execute if score #wait_time timer matches 6 run scoreboard players reset #charge_sound cmd.suc
execute if score #wait_time timer matches 9 run scoreboard players reset #charge_sound cmd.suc

execute if score #wait_time timer matches 2 run setblock -400 65 55 minecraft:respawn_anchor[charges=1]
execute if score #wait_time timer matches 2 unless score #charge_sound cmd.suc matches 1.. store success score #charge_sound cmd.suc run playsound block.respawn_anchor.charge master @a[tag=pray] -400 69 55 100 1 1

execute if score #wait_time timer matches 5 run setblock -400 65 55 minecraft:respawn_anchor[charges=2]
execute if score #wait_time timer matches 5 unless score #charge_sound cmd.suc matches 1.. store success score #charge_sound cmd.suc run playsound block.respawn_anchor.charge master @a[tag=pray] -400 69 55 100 1 1

execute if score #wait_time timer matches 8 run setblock -400 65 55 minecraft:respawn_anchor[charges=3]
execute if score #wait_time timer matches 8 unless score #charge_sound cmd.suc matches 1.. store success score #charge_sound cmd.suc run playsound block.respawn_anchor.charge master @a[tag=pray] -400 69 55 100 1 1

execute if score #wait_time timer matches 10 run setblock -400 65 55 minecraft:respawn_anchor[charges=4]
execute if score #wait_time timer matches 10 unless score #charge_sound cmd.suc matches 1.. store success score #charge_sound cmd.suc run playsound block.respawn_anchor.charge master @a[tag=pray] -400 69 55 100 1 1


execute if score #wait_tick timer matches 20.. run scoreboard players add #wait_time timer 1
execute if score #wait_tick timer matches 20.. run scoreboard players reset #wait_tick timer
execute as @a[tag=pray] at @s if score #wait_time timer matches 11.. run function unliar:devil_spawn/blood