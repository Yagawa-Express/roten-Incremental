scoreboard players operation #v roten.tmp = @s roten.c4
scoreboard players set @s roten.c4 1
execute if score #v roten.tmp matches 1 run scoreboard players set @s roten.c4 0
