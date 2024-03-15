execute if score #page cmd.count matches 1 run playsound minecraft:block.note_block.hat master @a[tag=player] ~ ~ ~ 100 .5 1
execute if score #page cmd.count matches 1 run tellraw @a[tag=player] [{"selector":"@a[tag=player]","color": "aqua"},"..."]
execute if score #page cmd.count matches 2 run tellraw @a[tag=player] [{"text": "나의 저주가 잘 먹혔나 보군","color": "dark_red","bold": true}]
execute if score #page cmd.count matches 3 run tellraw @a[tag=player] [{"text": "쿠키를 얻고 싶나? 나와 한번더 싸워 이겨라!","color": "dark_red","bold": true}]
execute if score #page cmd.count matches 4 run bossbar add devil {"text": "마왕","color": "dark_red","bold": true}
execute if score #page cmd.count matches 4 run bossbar set devil color red
execute if score #page cmd.count matches 4 run bossbar set devil max 30
execute if score #page cmd.count matches 4 run bossbar set devil style progress
execute if score #page cmd.count matches 4 run bossbar set devil visible true
execute if score #page cmd.count matches 4 run bossbar set devil players @a 
execute if score #page cmd.count matches 4 run scoreboard players set #devil_hp cmd.count 30
execute if score #page cmd.count matches 4 run execute store result bossbar devil value run scoreboard players get #devil_hp cmd.count
execute if score #page cmd.count matches 4 run tellraw @a[tag=player] [{"text": "[공격하기]","color": "yellow","clickEvent": {"action": "run_command","value":"/function iwannacookie:fight/attack"}}]
execute if score #page cmd.count matches 4 run scoreboard players set #start_scene cmd.suc 0