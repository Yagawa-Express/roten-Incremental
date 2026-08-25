scoreboard players add #ray roten.tmp 1
execute if score #ray roten.tmp matches 28.. run return 0
execute unless block ~ ~ ~ #roten:transparent run return run function roten:pickaxe/hit
execute positioned ^ ^ ^0.25 run function roten:pickaxe/ray
