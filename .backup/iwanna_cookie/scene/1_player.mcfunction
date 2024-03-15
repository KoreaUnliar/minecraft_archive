execute if score #page cmd.count matches 1 run playsound entity.experience_orb.pickup master @a[tag=player] ~ ~ ~ 100 1 1
execute if score #page cmd.count matches 1 run tellraw @a[tag=player] [{"text": "나는 용사 ","color": "white"},{"selector":"@a[tag=player]","color": "aqua"},"."]
execute if score #page cmd.count matches 2 run tellraw @a[tag=player] [{"text": "나는 저번","color": "white"},{"text": " 마왕","color": "red","bold": true,"hoverEvent": {"action": "show_text","value": [{"text": "마왕 알프레덴토 크라임 에이전 트로크람 2세","color": "aqua"}]}},{"text": "과의 전투에서 실수로 저주를 얻었다."}]
execute if score #page cmd.count matches 3 run tellraw @a[tag=player] [{"text": "\n그 저주는 바로..","color": "white"}]
execute if score #page cmd.count matches 4 run playsound entity.generic.explode master @a[tag=player] ~ ~ ~ 100 1 1
execute if score #page cmd.count matches 4 run tellraw @a[tag=player] [{"text": "5","color": "yellow","bold": true},{"text": "분내로 쿠키를 먹지 않으면 죽는 저주에 걸렸다.","color": "white"}]
execute if score #page cmd.count matches 5 run tellraw @a[tag=player] {"text": "이런! 말하고 있는 도중에도 시간은 흐르니,\n어서 빨리 쿠키를 구해야겠어!"}
execute if score #page cmd.count matches 5 run scoreboard players set #start_scene cmd.suc 0