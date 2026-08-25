# 実行者: プレイヤー / #ui roten.tmp = 11..15
scoreboard players set #ok roten.tmp 0
execute if score #ui roten.tmp matches 11 if score @s roten.cu matches 1.. run function roten:gacha/roll_cu
execute if score #ui roten.tmp matches 12 if score @s roten.fe matches 1.. run function roten:gacha/roll_fe
execute if score #ui roten.tmp matches 13 if score @s roten.au matches 1.. run function roten:gacha/roll_au
execute if score #ui roten.tmp matches 14 if score @s roten.di matches 1.. run function roten:gacha/roll_di
execute if score #ui roten.tmp matches 15 if score @s roten.pt matches 1.. run function roten:gacha/roll_pt
execute if score #ok roten.tmp matches 0 run title @s actionbar {"text":"コインが足りない！","color":"red"}
execute if score #ok roten.tmp matches 0 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.6
function roten:ui/open_roll
