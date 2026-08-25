scoreboard players operation #cx roten.tmp = #dx roten.tmp
scoreboard players operation #cz roten.tmp = #dz roten.tmp
scoreboard players operation #cx roten.tmp *= #i roten.tmp
scoreboard players operation #cz roten.tmp *= #i roten.tmp
scoreboard players operation #cx roten.tmp += #lcx roten.chunks
scoreboard players operation #cz roten.tmp += #lcz roten.chunks
execute store result storage roten:tmp cx int 1 run scoreboard players get #cx roten.tmp
execute store result storage roten:tmp cz int 1 run scoreboard players get #cz roten.tmp
function roten:chunk/check_dup with storage roten:tmp
scoreboard players add #i roten.tmp 1
execute if score #i roten.tmp matches ..4 run function roten:chunk/check_step
