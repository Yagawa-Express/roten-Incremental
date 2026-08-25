# 掘り終えたチャンクからランダムな方向に 1 チャンク空けて、次の 3 チャンクを指定する
execute store result score #d roten.tmp run random value 0..3
scoreboard players set #dx roten.tmp 0
scoreboard players set #dz roten.tmp 0
execute if score #d roten.tmp matches 0 run scoreboard players set #dx roten.tmp 1
execute if score #d roten.tmp matches 1 run scoreboard players set #dx roten.tmp -1
execute if score #d roten.tmp matches 2 run scoreboard players set #dz roten.tmp 1
execute if score #d roten.tmp matches 3 run scoreboard players set #dz roten.tmp -1

scoreboard players set #i roten.tmp 2
function roten:chunk/next_step
scoreboard players set #remain roten.chunks 3
tellraw @a [{"text":"[露天インクリメンタル] ","color":"gold"},{"text":"次の 3 チャンクが指定されました！","color":"yellow"}]
