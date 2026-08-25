scoreboard players add #tier roten.tier 1
execute store result storage roten:tmp tier int 1 run scoreboard players get #tier roten.tier
function roten:upgrade/announce with storage roten:tmp
function roten:upgrade/labels
execute as @a run function roten:pickaxe/sync
function roten:upgrade/check
