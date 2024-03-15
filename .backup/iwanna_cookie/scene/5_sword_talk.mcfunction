execute if score #script-page cmd.count matches 6..7 run scoreboard players set #page cmd.count 0
execute if score #script-page cmd.count matches 1.. run tellraw @a[tag=player] {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute if score #script-page cmd.count matches 6 run scoreboard players set #start_scene cmd.suc 6
execute if score #script-page cmd.count matches 7 run scoreboard players set #start_scene cmd.suc 7
execute if score #page cmd.count matches 1 run summon armor_stand -69.5 64 -22.5 {Invisible:1b,Silent:1b,Tags:["good_sword_cam"]}
execute if score #page cmd.count matches 1 run gamemode spectator @a[tag=player]
execute if score #page cmd.count matches 1 run spectate @e[tag=good_sword_cam,limit=1] @a[tag=player,limit=1]
execute if score #page cmd.count matches 1 run playsound block.note_block.pling master @a[tag=player] ~ ~ ~ 100 0.1 1
execute if score #page cmd.count matches 1 run tellraw @a[tag=player] {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute if score #page cmd.count matches 1 run tellraw @a[tag=player] [{"text": "어째서... 이런 어둡고 칙칙한 곳에 나를 왜 가둔거야?\n\n","color": "aqua"},{"text": "[미안하지만 기억이 안나..]","color": "green","clickEvent": {"action": "run_command","value": "/scoreboard players set #script-page cmd.count 6"}},{"text": "\n[닥치고 검으로 변신해]","color": "green","clickEvent": {"action": "run_command","value": "/scoreboard players set #script-page cmd.count 7"}}]
execute if score #page cmd.count matches 10 run tellraw @a[tag=player] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n말... 안해주는구나","color": "aqua"}]
execute if score #page cmd.count matches 11 run playsound entity.allay.ambient_with_item master @a[tag=player] ~ ~ ~ 100 2 1
execute if score #page cmd.count matches 11 run tellraw @a[tag=player] {"text": "모든것을처음부터하면나아졌을까","color": "aqua"}
execute if score #page cmd.count matches 12 run tellraw @a[tag=player] {"text": "그럼날이어둡고칙칙한곳에가두지않지않았을까","color": "aqua"}
execute if score #page cmd.count matches 13 run tellraw @a[tag=player] {"text": "그렇다면너가날대하는것이달라졌을까","color": "aqua"}
execute if score #page cmd.count matches 14 run tellraw @a[tag=player] {"text": "그래...처음부터. 처음으로 돌아가자.","color": "aqua"}
execute if score #page cmd.count matches 15 run gamemode adventure @a[tag=player]
execute if score #page cmd.count matches 15 run kill @a[tag=player]
execute if score #page cmd.count matches 15 run function iwannacookie:reset