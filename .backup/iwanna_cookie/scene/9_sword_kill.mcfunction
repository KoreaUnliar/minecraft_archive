execute if score #page cmd.count matches 1 run playsound minecraft:entity.allay.ambient_with_item master @a[tag=player] ~ ~ ~ 100 2 1
execute if score #page cmd.count matches 1 run tellraw @a[tag=player] [{"text": "역시 나 없으면 이렇게 약하잖아..","color": "aqua"}]
execute if score #page cmd.count matches 2 run tellraw @a[tag=player] [{"text": "잘가.. ","color": "aqua"},{"selector":"@a[tag=player,limit=1]","color": "green"},{"text": ".","color": "aqua"}]
execute if score #page cmd.count matches 3 run kill @e[tag=good_sword_cam]
execute if score #page cmd.count matches 3 run gamemode adventure @a[tag=player]
execute if score #page cmd.count matches 3 run playsound entity.player.attack.crit master @a[tag=player] ~ ~ ~ 100 1 1
execute if score #page cmd.count matches 3 run kill @a[tag=player]
execute if score #page cmd.count matches 3 run function iwannacookie:reset