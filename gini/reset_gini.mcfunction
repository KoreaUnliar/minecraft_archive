kill @e[tag=gini]
kill @e[tag=gini_inter]
summon villager 1260 64 -1593 {Tags:["gini"],Invulnerable:true,NoAI:true,Silent:true}
summon minecraft:interaction 1260 64 -1593 {Tags:["gini_inter"],width:1.3f,height:2.25f}
kill @e[tag=work_armor]
bossbar remove av
execute as @p[gamemode=spectator,limit=1] at @s run gamemode creative
kill @e[tag=gini_leg]