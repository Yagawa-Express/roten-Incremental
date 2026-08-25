# 露天ツルハシで 1 ブロック壊すたびに呼ばれる
advancement revoke @s only roten:mined
item modify entity @s weapon.mainhand roten:repair
execute if score #tier roten.tier matches 6.. at @s run function roten:pickaxe/area_mine
