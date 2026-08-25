execute store result score #n roten.tmp run clear @s minecraft:raw_gold 0
scoreboard players operation #k roten.tmp = #n roten.tmp
scoreboard players operation #k roten.tmp /= #4 roten.const
execute if score #k roten.tmp matches ..0 run return 0
scoreboard players operation #m roten.tmp = #k roten.tmp
scoreboard players operation #m roten.tmp *= #4 roten.const
execute store result storage roten:tmp m int 1 run scoreboard players get #m roten.tmp
function roten:gacha/conv_au_m with storage roten:tmp
scoreboard players operation @s roten.au += #k roten.tmp
