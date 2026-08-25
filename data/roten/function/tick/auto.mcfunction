# 自動採掘（169 / 196 / 225 チャンク）
scoreboard players add #ta roten.sys 1
scoreboard players set #ai roten.tmp 40
execute if score #tier roten.tier matches 16 run scoreboard players set #ai roten.tmp 20
execute if score #tier roten.tier matches 17.. run scoreboard players set #ai roten.tmp 10
execute unless score #ta roten.sys >= #ai roten.tmp run return 0
scoreboard players set #ta roten.sys 0
execute as @a at @s if items entity @s weapon.mainhand minecraft:iron_pickaxe[minecraft:custom_data={roten:1}] run function roten:pickaxe/area_mine
