scoreboard players set #t20 roten.sys 0

# コイン/設定スコアの初期化
scoreboard players add @a roten.cu 0
scoreboard players add @a roten.fe 0
scoreboard players add @a roten.au 0
scoreboard players add @a roten.di 0
scoreboard players add @a roten.pt 0
scoreboard players add @a roten.c1 0
scoreboard players add @a roten.c2 0
scoreboard players add @a roten.c3 0
scoreboard players add @a roten.c4 0
scoreboard players add @a roten.c5 0

# 手持ちのツルハシを現在のティアに同期
execute as @a run function roten:pickaxe/sync

# 取り残された判定用マーカーの掃除
kill @e[type=minecraft:marker,tag=roten_probe]
kill @e[type=minecraft:marker,tag=roten_start]
kill @e[type=minecraft:marker,tag=roten_aim]

# 指定チャンクを掘り終えたか判定
execute as @e[type=minecraft:marker,tag=roten_chunk] at @s run function roten:chunk/scan

# 鉱石→ガチャコイン自動変換（121 チャンクで解放）
execute if score #tier roten.tier matches 13.. as @a run function roten:gacha/convert
