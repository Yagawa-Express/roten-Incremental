# 実行者: チャンクマーカー（チャンク北西角・y=-64）
# チャンクの周囲 48 ブロック以内にいるプレイヤーの高さに枠を描く
execute positioned ~-48 ~ ~-48 unless entity @a[dx=112,dy=384,dz=112,limit=1] run return 0
execute store result storage roten:tmp py int 1 positioned ~-48 ~ ~-48 run data get entity @a[dx=112,dy=384,dz=112,limit=1,sort=nearest] Pos[1]
function roten:tick/outline_m with storage roten:tmp
