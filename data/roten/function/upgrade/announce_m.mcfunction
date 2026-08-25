title @a times 5 40 10
title @a title {"text":"強化解放！","color":"gold","bold":true}
$title @a subtitle {"text":"$(n) チャンク → $(name)","color":"yellow"}
$tellraw @a [{"text":"[露天インクリメンタル] ","color":"gold"},{"text":"$(n) チャンク達成 → $(name)","color":"green"}]
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
