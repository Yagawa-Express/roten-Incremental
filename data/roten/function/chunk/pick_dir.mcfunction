scoreboard players add #try roten.tmp 1
execute store result score #d roten.tmp run random value 0..3
scoreboard players set #dx roten.tmp 0
scoreboard players set #dz roten.tmp 0
execute if score #d roten.tmp matches 0 run scoreboard players set #dx roten.tmp 1
execute if score #d roten.tmp matches 1 run scoreboard players set #dx roten.tmp -1
execute if score #d roten.tmp matches 2 run scoreboard players set #dz roten.tmp 1
execute if score #d roten.tmp matches 3 run scoreboard players set #dz roten.tmp -1

# この方向の 3 チャンクが既に掘り終わり済みでないか調べる
scoreboard players set #dup roten.tmp 0
scoreboard players set #i roten.tmp 2
function roten:chunk/check_step

# 重なっていたら引き直す（16 回試しても駄目なら諦めてそのまま使う）
execute if score #dup roten.tmp matches 1 if score #try roten.tmp matches ..16 run function roten:chunk/pick_dir
