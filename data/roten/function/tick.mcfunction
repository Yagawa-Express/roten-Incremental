# メニュー（トリガー）受付
scoreboard players enable @a roten_ui
execute as @a[scores={roten_ui=1..}] at @s run function roten:ui/dispatch

# マス掘りのための照準追跡（2x2 が解放されてから）
execute if score #tier roten.tier matches 6.. as @a at @s if items entity @s weapon.mainhand minecraft:iron_pickaxe[minecraft:custom_data={roten:1}] run function roten:pickaxe/watch

scoreboard players add #t5 roten.sys 1
scoreboard players add #t20 roten.sys 1
execute if score #t5 roten.sys matches 5.. run function roten:tick/every5
execute if score #t20 roten.sys matches 20.. run function roten:tick/every20
execute if score #tier roten.tier matches 15.. run function roten:tick/auto
