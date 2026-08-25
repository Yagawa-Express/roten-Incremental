scoreboard players set #t5 roten.sys 0
# 指定チャンクをパーティクルの線で囲う
execute as @e[type=minecraft:marker,tag=roten_chunk] at @s run function roten:tick/outline
