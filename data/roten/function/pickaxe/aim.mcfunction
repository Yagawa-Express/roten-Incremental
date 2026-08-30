# 視線方向に 0.25 ブロックずつ進み、最初の不透過ブロックを探す（最大 5.5 ブロック）
scoreboard players add #ray roten.tmp 1
execute if score #ray roten.tmp matches 23.. run return 0
execute unless block ~ ~ ~ #roten:transparent run return run function roten:pickaxe/aim_set
execute positioned ^ ^ ^0.25 run function roten:pickaxe/aim
