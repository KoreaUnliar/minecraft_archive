clear @a[tag=sp_block] white_wool
tellraw @a[tag=sp_block] {"text":"실패","color":"red","bold":true}
playsound entity.villager.no master @a[tag=sp_block] ~ ~ ~ 100 0.1 1
advancement grant @a[tag=sp_block] until unliar:server/1sec_block_fail
function unliar:1second_block/init 