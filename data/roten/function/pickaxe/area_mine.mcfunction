# 自動採掘用: 視線の先を探して掘る
scoreboard players set #ray roten.tmp 0
execute anchored eyes positioned ^ ^ ^ run function roten:pickaxe/ray
