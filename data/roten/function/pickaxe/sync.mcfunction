# 手に持っている露天ツルハシを現在の強化ティアに合わせる
execute unless score #tier roten.tier matches 1.. run return 0
execute unless items entity @s weapon.mainhand minecraft:iron_pickaxe[minecraft:custom_data={roten:1}] run return 0
execute store result storage roten:tmp tier int 1 run scoreboard players get #tier roten.tier
function roten:pickaxe/sync_m with storage roten:tmp
