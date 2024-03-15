execute if score #page cmd.count matches 1 run tellraw @a[tag=player] [{"text": "안돼.. 이렇게 죽는다고?","color": "aqua"}]
execute if score #page cmd.count matches 2 run tellraw @a[tag=player] {"text": "젠장..","color": "aqua"}
execute if score #page cmd.count matches 2 run playsound minecraft:entity.allay.death master @a[tag=player] ~ ~ ~ 100 .1 1
execute if score #page cmd.count matches 2 run particle end_rod -69.5 65.5 -17.5 .5 1 .5 0 100 normal
execute if score #page cmd.count matches 2 run kill @e[tag=good_sword]
execute if score #page cmd.count matches 3 run give @a[tag=player] diamond_sword{display:{Name:'{"text": "겁나 짱센검","color": "gold","bold": true}'}}
execute if score #page cmd.count matches 3 run playsound minecraft:ui.toast.challenge_complete master @a[tag=player] ~ ~ ~ 100 2 1
execute if score #page cmd.count matches 3 run tellraw @a[tag=player] {"text": "겁나 짱센검을 획득했다!","color": "light_purple","bold": true}
execute if score #page cmd.count matches 4 run kill @e[tag=good_sword_cam]
execute if score #page cmd.count matches 4 run gamemode adventure @a[tag=player]
execute if score #page cmd.count matches 4 run tag @a[tag=player] add sword_master
execute if score #page cmd.count matches 4 run bossbar remove good_sword
execute if score #page cmd.count matches 4 run scoreboard players set #start_scene cmd.suc 0