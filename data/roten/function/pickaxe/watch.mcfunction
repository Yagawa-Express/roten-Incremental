# 実行者: 露天ツルハシを手に持っているプレイヤー / 実行位置: プレイヤー / 毎ティック
# 不可壊なので耐久からは採掘を検知できない。
# 代わりに「前ティックに狙っていたブロックが消えていたら掘った」と判定する。

# 1) 前ティックの照準ブロックが無くなっていたら、そこを中心に範囲掘り
execute if score @s roten.la matches 1 run function roten:pickaxe/check_break

# 2) 今ティックの照準ブロックを記録し直す
scoreboard players set @s roten.la 0
scoreboard players set #ray roten.tmp 0
execute anchored eyes positioned ^ ^ ^ run function roten:pickaxe/aim
