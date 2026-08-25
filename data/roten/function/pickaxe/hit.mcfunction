# 実行者: プレイヤー / 実行位置: 視線の先のブロック
# 指定チャンクの中でだけ範囲掘りが有効
summon minecraft:marker ~ ~ ~ {Tags:["roten_probe"]}
scoreboard players set #in roten.tmp 0
execute as @e[type=minecraft:marker,tag=roten_chunk] at @s if entity @e[type=minecraft:marker,tag=roten_probe,dx=16,dy=384,dz=16] run scoreboard players set #in roten.tmp 1
kill @e[type=minecraft:marker,tag=roten_probe]
execute if score #in roten.tmp matches 0 run return 0

# 向いている面に合わせて掘る平面を決める
execute store result score #pitch roten.tmp run data get entity @s Rotation[1]
execute store result score #yaw roten.tmp run data get entity @s Rotation[0]
execute if score #pitch roten.tmp matches 45.. run return run function roten:pickaxe/break_xz
execute if score #pitch roten.tmp matches ..-45 run return run function roten:pickaxe/break_xz
execute if score #yaw roten.tmp matches -45..45 run return run function roten:pickaxe/break_xy
execute if score #yaw roten.tmp matches 135.. run return run function roten:pickaxe/break_xy
execute if score #yaw roten.tmp matches ..-135 run return run function roten:pickaxe/break_xy
function roten:pickaxe/break_zy
