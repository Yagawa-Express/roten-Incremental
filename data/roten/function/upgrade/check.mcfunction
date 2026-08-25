# 累計チャンク数が閾値に届いていたら 1 段階解放する（解放後に自分を呼び直す）
execute if score #tier roten.tier matches 0 if score #total roten.chunks matches 1.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 1 if score #total roten.chunks matches 3.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 2 if score #total roten.chunks matches 5.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 3 if score #total roten.chunks matches 7.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 4 if score #total roten.chunks matches 9.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 5 if score #total roten.chunks matches 16.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 6 if score #total roten.chunks matches 25.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 7 if score #total roten.chunks matches 36.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 8 if score #total roten.chunks matches 49.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 9 if score #total roten.chunks matches 64.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 10 if score #total roten.chunks matches 81.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 11 if score #total roten.chunks matches 100.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 12 if score #total roten.chunks matches 121.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 13 if score #total roten.chunks matches 144.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 14 if score #total roten.chunks matches 169.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 15 if score #total roten.chunks matches 196.. run return run function roten:upgrade/do
execute if score #tier roten.tier matches 16 if score #total roten.chunks matches 225.. run return run function roten:upgrade/do
