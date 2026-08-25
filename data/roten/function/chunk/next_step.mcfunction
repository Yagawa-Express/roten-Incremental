scoreboard players operation #cx roten.tmp = #dx roten.tmp
scoreboard players operation #cz roten.tmp = #dz roten.tmp
scoreboard players operation #cx roten.tmp *= #i roten.tmp
scoreboard players operation #cz roten.tmp *= #i roten.tmp
scoreboard players operation #cx roten.tmp += #lcx roten.chunks
scoreboard players operation #cz roten.tmp += #lcz roten.chunks
function roten:chunk/spawn
scoreboard players add #i roten.tmp 1
execute if score #i roten.tmp matches ..4 run function roten:chunk/next_step
