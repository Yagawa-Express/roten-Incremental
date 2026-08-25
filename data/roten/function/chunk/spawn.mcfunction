# #cx / #cz（チャンク座標）の位置にマーカーを立てる
scoreboard players operation #bx roten.tmp = #cx roten.tmp
scoreboard players operation #bz roten.tmp = #cz roten.tmp
scoreboard players operation #bx roten.tmp *= #16 roten.const
scoreboard players operation #bz roten.tmp *= #16 roten.const
execute store result storage roten:tmp bx int 1 run scoreboard players get #bx roten.tmp
execute store result storage roten:tmp bz int 1 run scoreboard players get #bz roten.tmp
function roten:chunk/spawn_m with storage roten:tmp
