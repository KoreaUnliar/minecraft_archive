execute if score #page cmd.count matches 1 run playsound minecraft:block.note_block.hat master @a[tag=player] ~ ~ ~ 100 1 1
execute if score #page cmd.count matches 1 run tellraw @a[tag=player] [{"text": "하하하! 나약하군 용사!","color": "dark_red","bold": true}]
execute if score #page cmd.count matches 2 run tellraw @a[tag=player] [{"text": "그럼.. 죽어라.","color": "dark_red","bold": true}]
execute if score #page cmd.count matches 2 run playsound entity.wither.break_block master @a[tag=player] ~ ~ ~ 100 1 1
execute if score #page cmd.count matches 2 run kill @a[tag=player]
execute if score #page cmd.count matches 2 run bossbar remove devil
execute if score #page cmd.count matches 3 run fill -73 69 -33 -67 64 -33 air destroy
execute if score #page cmd.count matches 3 run kill @e[type=item]
execute if score #page cmd.count matches 3 run summon armor_stand -69.5 65.5 -17.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Small:1b,Marker:1b,NoBasePlate:1b,Tags:["good_sword"],Rotation:[-180F,0F],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1013172841,-2095362707,-1903497045,798826484],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc5ZjM1NDNlZTY4MmM3ODMyOTFiYTFmMzNjYmEyZGIwOTRhMjlkZjI3MjcxM2ZlZDAxN2FiMGJhODgzZTZkMSJ9fX0="}]}}}}]}
execute if score #page cmd.count matches 3 run scoreboard players set #start_scene cmd.suc 0