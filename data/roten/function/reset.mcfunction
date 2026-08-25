# 進行状況を全て初期化する（/function roten:reset）
kill @e[type=minecraft:marker,tag=roten_chunk]
kill @e[type=minecraft:marker,tag=roten_probe]
kill @e[type=minecraft:marker,tag=roten_start]
scoreboard players set #total roten.chunks 0
scoreboard players set #remain roten.chunks 0
scoreboard players set #lcx roten.chunks 0
scoreboard players set #lcz roten.chunks 0
scoreboard players set #tier roten.tier 0
scoreboard players set #started roten.sys 0
scoreboard players set @a roten.cu 0
scoreboard players set @a roten.fe 0
scoreboard players set @a roten.au 0
scoreboard players set @a roten.di 0
scoreboard players set @a roten.pt 0
function roten:upgrade/labels
tellraw @a [{"text":"[露天インクリメンタル] ","color":"gold"},{"text":"進行状況をリセットしました","color":"red"}]
