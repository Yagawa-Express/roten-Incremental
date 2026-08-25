# 実行者: メニューのボタンを押したプレイヤー
scoreboard players operation #ui roten.tmp = @s roten_ui
scoreboard players reset @s roten_ui
scoreboard players enable @s roten_ui

execute if score #ui roten.tmp matches 1 run function roten:ui/open_root
execute if score #ui roten.tmp matches 2 run function roten:ui/open_tree
execute if score #ui roten.tmp matches 3 run function roten:ui/open_luck
execute if score #ui roten.tmp matches 4 run function roten:ui/open_coins
execute if score #ui roten.tmp matches 5 run function roten:ui/open_roll
execute if score #ui roten.tmp matches 6 run dialog show @s roten:rates
execute if score #ui roten.tmp matches 7 run function roten:ui/open_convert
execute if score #ui roten.tmp matches 11..15 run function roten:gacha/roll
execute if score #ui roten.tmp matches 21..25 run function roten:gacha/toggle
