execute if score #page cmd.count matches 1 run playsound entity.wither.ambient master @a[tag=player] ~ ~ ~ 100 .1 1
execute if score #page cmd.count matches 1 run tellraw @a[tag=player] {"text": "큭.. 역시 용사는 용사인가","color": "dark_red","bold": true}
execute if score #page cmd.count matches 2 run tellraw @a[tag=player] {"text": "그래.. 쿠키를 주마..","color": "dark_red","bold": true}
execute if score #page cmd.count matches 3 run tellraw @a[tag=player] {"text": "그 쿠키를 먹으면 저주가 풀릴거야.,","color": "dark_red","bold": true}
execute if score #page cmd.count matches 4 run give @a[tag=player] cookie{display:{Name:'[{"text":"쿠키 "},{"text":"[","color":"yellow"},{"keybind":"key.swapOffhand","color":"yellow"},{"text":"]","color":"yellow"},{"text":"를 눌러 먹기"}]'}} 1
execute if score #page cmd.count matches 4 run playsound minecraft:item.armor.equip_leather master @a[tag=player] ~ ~ ~ 100 1 1
execute if score #page cmd.count matches 4 run particle dust 0 0 0 1 -17.5 54 -42.5 1 1 1 3 300
execute if score #page cmd.count matches 4 run kill @e[tag=devil_king]
execute if score #page cmd.count matches 4 run bossbar remove devil
execute if score #page cmd.count matches 4 run scoreboard players set #start_scene cmd.suc 0