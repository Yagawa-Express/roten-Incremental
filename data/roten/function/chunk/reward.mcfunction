execute store result storage roten:tmp n int 1 run scoreboard players get #total roten.chunks
function roten:chunk/reward_m with storage roten:tmp
execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.4
# ガチャコイン配布
scoreboard players add @a roten.cu 5
execute store result score #r roten.tmp run random value 1..100
execute if score #r roten.tmp matches ..40 run scoreboard players add @a roten.fe 1
execute if score #r roten.tmp matches ..15 run scoreboard players add @a roten.au 1
execute if score #r roten.tmp matches ..5 run scoreboard players add @a roten.di 1
execute if score #r roten.tmp matches 1 run scoreboard players add @a roten.pt 1
