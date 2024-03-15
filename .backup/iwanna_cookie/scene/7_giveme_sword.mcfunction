execute if score #page cmd.count matches 1 run playsound block.note_block.pling master @a[tag=player] ~ ~ ~ 100 .1 1
execute if score #page cmd.count matches 1 run tellraw @a[tag=player] {"text": "아하하하!","color": "aqua"}
execute if score #page cmd.count matches 2 run tellraw @a[tag=player] {"text": "마왕 잡고선 드디어 돌아버린거야?","color": "aqua"}
execute if score #page cmd.count matches 3 run tellraw @a[tag=player] {"text": "한동안 너는 편하게 살고","color": "aqua"}
execute if score #page cmd.count matches 4 run tellraw @a[tag=player] {"text": "이 개같은 곳에서 계속 있었는데","color": "aqua"}
execute if score #page cmd.count matches 5 run tellraw @a[tag=player] [{"text": "오랜만에 와서 하는말이 ","color": "aqua"},{"text": "닥치고 검으로 변신해?","color": "red","bold": true}]
execute if score #page cmd.count matches 6 run tellraw @a[tag=player] {"text": "그럼 너도 이 기분 느껴봐.","color": "aqua"}
execute if score #page cmd.count matches 6 run playsound entity.wither.death master @a[tag=player] ~ ~ ~ 100 .1 1
execute if score #page cmd.count matches 6 run fill -73 69 -33 -67 64 -33 deepslate replace
execute if score #page cmd.count matches 6 run kill @e[tag=good_sword_cam]
execute if score #page cmd.count matches 6 run gamemode adventure @a[tag=player]
execute if score #page cmd.count matches 6 run tag @a[tag=player] add sword_badness