# 掘り終えたチャンクからランダムな方向に 1 チャンク空けて、次の 3 チャンクを指定する。
# 掘り終わり済みのチャンクに重なる方向は引き直す。
scoreboard players set #try roten.tmp 0
function roten:chunk/pick_dir

scoreboard players set #i roten.tmp 2
function roten:chunk/next_step
scoreboard players set #remain roten.chunks 3
tellraw @a [{"text":"[露天インクリメンタル] ","color":"gold"},{"text":"次の 3 チャンクが指定されました！","color":"yellow"}]
