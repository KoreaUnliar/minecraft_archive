execute if score #page cmd.count matches 1 run playsound entity.player.levelup master @a[tag=player] ~ ~ ~ 100 2 1
execute if score #page cmd.count matches 1 run tellraw @a[tag=player] {"text": "쿠키를 먹어서 저주에서 풀려났다!","color": "gold"}
execute if score #page cmd.count matches 2 run tellraw @a[tag=player] {"text":"[ㅊㅊ! 당신은 자유의 몸이 되엇ㅅ니다]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"제작자: "},{"text":"Unliar","color":"aqua"},{"text":"\n\n커맨드 수: "},{"text":"248","color":"green"},{"text":" +1","color":"light_purple"}]}}
execute if score #page cmd.count matches 3 run tellraw @a[tag=player] {"text": "[다시하겠습니까?]","color": "yellow","clickEvent": {"action": "run_command","value": "/gamemode adventure @s"}}
execute if score #page cmd.count matches 3 run gamemode creative @a[tag=player]
execute if score #page cmd.count matches 3 run function iwannacookie:reset