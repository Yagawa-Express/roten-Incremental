# 実行者: プレイヤー / 実行位置: 壊す 1 ブロック
execute if block ~ ~ ~ #roten:protected run return 0
execute if block ~ ~ ~ minecraft:air run return 0
execute if block ~ ~ ~ minecraft:cave_air run return 0
execute if block ~ ~ ~ minecraft:void_air run return 0
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air replace
