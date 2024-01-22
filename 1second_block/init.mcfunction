scoreboard players set #wait_title timer 3
setblock 88 64 -1198 air replace
setblock 88 64 -1200 air
scoreboard players set @a[tag=sp_block] timer 0
scoreboard players set #sp_block_timer timer 0
scoreboard players set #sp_block_timer1 timer 0
fill 82 64 -1209 88 74 -1203 air replace white_wool
effect clear @a[tag=sp_block] instant_health
tag @a[tag=sp_block] remove sp_block