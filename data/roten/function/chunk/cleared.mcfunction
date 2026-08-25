# 実行者: 掘り終わったチャンクのマーカー
execute store result score #lcx roten.chunks run data get entity @s Pos[0]
execute store result score #lcz roten.chunks run data get entity @s Pos[2]
scoreboard players operation #lcx roten.chunks /= #16 roten.const
scoreboard players operation #lcz roten.chunks /= #16 roten.const
kill @s

scoreboard players add #total roten.chunks 1
scoreboard players remove #remain roten.chunks 1
function roten:chunk/reward
function roten:upgrade/check
execute if score #remain roten.chunks matches ..0 run function roten:chunk/next_group
