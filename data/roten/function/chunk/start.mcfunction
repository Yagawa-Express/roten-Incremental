# 実行者: 最初にツルハシを手にしたプレイヤー
scoreboard players set #started roten.sys 1

# プレイヤーのいるチャンク座標を求める
execute at @s align xyz run summon minecraft:marker ~ ~ ~ {Tags:["roten_start"]}
execute store result score #lcx roten.chunks run data get entity @n[type=minecraft:marker,tag=roten_start] Pos[0]
execute store result score #lcz roten.chunks run data get entity @n[type=minecraft:marker,tag=roten_start] Pos[2]
kill @e[type=minecraft:marker,tag=roten_start]
scoreboard players operation #lcx roten.chunks /= #16 roten.const
scoreboard players operation #lcz roten.chunks /= #16 roten.const

# ランダムに少し離れたチャンクを 1 つ指定する
execute store result score #ox roten.tmp run random value -5..5
execute store result score #oz roten.tmp run random value -5..5
execute if score #ox roten.tmp matches -1..1 if score #oz roten.tmp matches -1..1 run scoreboard players set #ox roten.tmp 3
scoreboard players operation #cx roten.tmp = #lcx roten.chunks
scoreboard players operation #cz roten.tmp = #lcz roten.chunks
scoreboard players operation #cx roten.tmp += #ox roten.tmp
scoreboard players operation #cz roten.tmp += #oz roten.tmp
function roten:chunk/spawn
scoreboard players set #remain roten.chunks 1
tellraw @a [{"text":"[露天インクリメンタル] ","color":"gold"},{"text":"最初のチャンクが指定されました。パーティクルの枠の中を掘り尽くそう！","color":"yellow"}]
