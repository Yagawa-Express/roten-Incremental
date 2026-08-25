# 鉄のツルハシのレシピ結果は roten の「露天ツルハシ」に置き換わっている
advancement revoke @s only roten:craft
playsound minecraft:block.anvil.use player @s ~ ~ ~ 1 1.2
execute if score #started roten.sys matches 0 run function roten:pickaxe/try_start
function roten:pickaxe/sync
