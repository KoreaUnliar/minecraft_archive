execute if score #page cmd.count matches 1 store result bossbar devil value run scoreboard players set #devil_hp cmd.count 0
execute if score #page cmd.count matches 1 store result bossbar devil value run scoreboard players get #devil_hp cmd.count
execute if score #page cmd.count matches 1 run playsound entity.dragon_fireball.explode master @a[tag=player] ~ ~ ~ 100 1 1
execute if score #page cmd.count matches 1 run tellraw @a[tag=player] {"text": "크흑.. 너무 강하군 용사..","color": "dark_red","bold": true}
execute if score #page cmd.count matches 2 run tellraw @a[tag=player] {"text": "이번에도 널 이기지 못했군..","color": "dark_red","bold": true}
execute if score #page cmd.count matches 3 run tellraw @a[tag=player] [{"text": "쿠키","color": "aqua","bold": true},{"text": "는 여기....","color": "dark_red","bold": true}]
execute if score #page cmd.count matches 3 run give @a[tag=player] cookie{display:{Name:'[{"text":"쿠키 "},{"text":"[","color":"yellow"},{"keybind":"key.swapOffhand","color":"yellow"},{"text":"]","color":"yellow"},{"text":"를 눌러 먹기"}]'}} 1
execute if score #page cmd.count matches 4 run particle dust 0.000 0.000 0.000 1 ~ ~ ~ 1 1 1 1 200 normal
execute if score #page cmd.count matches 4 run playsound entity.allay.death master @a[tag=player] ~ ~ ~ 100 1 1
execute if score #page cmd.count matches 4 run kill @e[tag=devil_king]
execute if score #page cmd.count matches 4 run scoreboard players set #start_scene cmd.suc 0