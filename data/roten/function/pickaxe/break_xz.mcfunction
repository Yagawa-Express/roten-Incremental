# 上下を向いている時: 水平な板状に掘る
# #size roten.tmp = 一辺の長さ (2..5)
execute if score #size roten.tmp matches 1.. positioned ~ ~ ~ run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 2.. positioned ~ ~ ~1 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 3.. positioned ~ ~ ~-1 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 4.. positioned ~ ~ ~2 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 5.. positioned ~ ~ ~-2 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 2.. positioned ~1 ~ ~ run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 2.. positioned ~1 ~ ~1 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 3.. positioned ~1 ~ ~-1 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 4.. positioned ~1 ~ ~2 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 5.. positioned ~1 ~ ~-2 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 3.. positioned ~-1 ~ ~ run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 3.. positioned ~-1 ~ ~1 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 3.. positioned ~-1 ~ ~-1 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 4.. positioned ~-1 ~ ~2 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 5.. positioned ~-1 ~ ~-2 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 4.. positioned ~2 ~ ~ run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 4.. positioned ~2 ~ ~1 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 4.. positioned ~2 ~ ~-1 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 4.. positioned ~2 ~ ~2 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 5.. positioned ~2 ~ ~-2 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 5.. positioned ~-2 ~ ~ run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 5.. positioned ~-2 ~ ~1 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 5.. positioned ~-2 ~ ~-1 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 5.. positioned ~-2 ~ ~2 run function roten:pickaxe/break_one
execute if score #size roten.tmp matches 5.. positioned ~-2 ~ ~-2 run function roten:pickaxe/break_one
