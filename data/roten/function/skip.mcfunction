# 掘れないブロック（エンドポータル枠など）で詰んだ時に指定をやり直す（OP）
kill @e[type=minecraft:marker,tag=roten_chunk]
scoreboard players set #remain roten.chunks 0
function roten:chunk/next_group
tellraw @a [{"text":"[露天インクリメンタル] ","color":"gold"},{"text":"指定チャンクをやり直しました","color":"red"}]
