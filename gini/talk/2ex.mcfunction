execute as @e[tag=gini] at @s run tellraw @p [{"text":"\n\n네..넷! 준비할게요오..","color":"gold"}]
kill @e[tag=gini_inter]
summon armor_stand 1258 64 -1593.1 {NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Tags:["work_armor"], Pose:{Head:[18f,0f,0f],LeftArm:[332f,0f,0f],RightArm:[330f,0f,0f]}}
execute as @e[tag=gini] at @s run gamemode spectator @p
execute as @e[tag=gini] at @s run spectate @e[tag=work_armor,limit=1] @p
execute as @e[tag=work_armor] at @s run tp @s ~ ~ ~ ~ 35
scoreboard players set #av cmd.count 0
bossbar remove av
function unliar:gini/scene/create_bossbar
#function semen
setblock 1260 64 -1589 redstone_block


execute as @e[tag=gini] at @s if entity @e[tag=gini,type=villager] run function unliar:gini/scene/villager
execute as @e[tag=gini] at @s if entity @e[tag=gini,type=armor_stand] run function unliar:gini/scene/girl
execute as @e[tag=gini] at @s if entity @e[tag=gini,type=armor_stand] run setblock 1256 64 -1589 air
execute as @e[tag=gini] at @s run advancement grant @p until unliar:server/gini
execute as @e[tag=gini] at @s run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 100 2 1