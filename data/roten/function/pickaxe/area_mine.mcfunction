# 実行者: プレイヤー / 実行位置: プレイヤー
# 掘る一辺の長さを決める
scoreboard players set #size roten.tmp 1
execute if score #tier roten.tier matches 6.. run scoreboard players set #size roten.tmp 2
execute if score #tier roten.tier matches 10.. run scoreboard players set #size roten.tmp 3
execute if score #tier roten.tier matches 11.. run scoreboard players set #size roten.tmp 4
execute if score #tier roten.tier matches 14.. run scoreboard players set #size roten.tmp 5
execute if score #size roten.tmp matches ..1 run return 0

# 視線の先のブロックを探す
scoreboard players set #ray roten.tmp 0
execute anchored eyes positioned ^ ^ ^ run function roten:pickaxe/ray
