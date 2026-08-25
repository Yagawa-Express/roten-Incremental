# 指定チャンクはオーバーワールド前提（y=-58〜319 で判定し、判定用領域もオーバーワールドに置く）
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run return run function roten:chunk/start
tellraw @s [{"text":"[露天インクリメンタル] ","color":"gold"},{"text":"オーバーワールドで鉄のツルハシを作ると開始します","color":"red"}]
