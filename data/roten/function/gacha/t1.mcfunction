scoreboard players operation #v roten.tmp = @s roten.c1
scoreboard players set @s roten.c1 1
execute if score #v roten.tmp matches 1 run scoreboard players set @s roten.c1 0
