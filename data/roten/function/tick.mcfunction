# メニュー（トリガー）受付
scoreboard players enable @a roten_ui
execute as @a[scores={roten_ui=1..}] run function roten:ui/dispatch

scoreboard players add #t5 roten.sys 1
scoreboard players add #t20 roten.sys 1
execute if score #t5 roten.sys matches 5.. run function roten:tick/every5
execute if score #t20 roten.sys matches 20.. run function roten:tick/every20
execute if score #tier roten.tier matches 15.. run function roten:tick/auto
