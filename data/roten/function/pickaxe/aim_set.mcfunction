# 実行者: プレイヤー / 実行位置: 狙っているブロック
execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:["roten_aim"]}
execute store result score @s roten.lx run data get entity @n[type=minecraft:marker,tag=roten_aim] Pos[0]
execute store result score @s roten.ly run data get entity @n[type=minecraft:marker,tag=roten_aim] Pos[1]
execute store result score @s roten.lz run data get entity @n[type=minecraft:marker,tag=roten_aim] Pos[2]
kill @e[type=minecraft:marker,tag=roten_aim]
scoreboard players set @s roten.la 1
