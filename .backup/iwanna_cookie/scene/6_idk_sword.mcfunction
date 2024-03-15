execute if score #page cmd.count matches 1 run playsound block.note_block.pling master @a[tag=player] ~ ~ ~ 100 2 1
execute if score #page cmd.count matches 1 run tellraw @a[tag=player] {"text": "뭐...?","color": "aqua"}
execute if score #page cmd.count matches 2 run tellraw @a[tag=player] {"text": "방금 내가 잘못들었나?\n기억이 안나?","color": "aqua"}
execute if score #page cmd.count matches 3 run tellraw @a[tag=player] {"text": "하하하하하하하하하하~!","color": "aqua"}
execute if score #page cmd.count matches 4 run tellraw @a[tag=player] {"text": "말을 할거면 제대로해.","color": "aqua"}
execute if score #page cmd.count matches 5 run tellraw @a[tag=player] {"text": "나약한 너가 마왕을 잡을 수 있던 이유가\n나 때문인데.","color": "aqua"}
execute if score #page cmd.count matches 6 run tellraw @a[tag=player] {"text": "함께한 10년이 기억이 안나?","color": "aqua"}
execute if score #page cmd.count matches 7 run tellraw @a[tag=player] {"text": "그것참... 웃기네","color": "aqua"}
execute if score #page cmd.count matches 7 run bossbar add good_sword {"text": "성검 알렌시아","color": "aqua","bold": true}
execute if score #page cmd.count matches 7 run bossbar set good_sword color blue
execute if score #page cmd.count matches 7 run bossbar set good_sword max 10
execute if score #page cmd.count matches 7 run bossbar set good_sword style progress
execute if score #page cmd.count matches 7 run bossbar set good_sword visible true
execute if score #page cmd.count matches 7 run bossbar set good_sword players @a 
execute if score #page cmd.count matches 7 run scoreboard players set #gs_hp cmd.count 10
execute if score #page cmd.count matches 7 run execute store result bossbar good_sword value run scoreboard players get #gs_hp cmd.count
execute if score #page cmd.count matches 7 run tellraw @a[tag=player] [{"text": "[공격하기]","color": "yellow","clickEvent": {"action": "run_command","value":"/function iwannacookie:fight/fight_good_sword"}}]
execute if score #page cmd.count matches 7 run scoreboard players set #start_scene cmd.suc 0