# スコアボード
scoreboard objectives add roten.chunks dummy "掘り終えたチャンク"
scoreboard objectives add roten.tier dummy "強化ティア"
scoreboard objectives add roten.sys dummy "内部"
scoreboard objectives add roten.tmp dummy "作業用"
scoreboard objectives add roten.const dummy "定数"
scoreboard objectives add roten.cu dummy "コッパーガチャコイン"
scoreboard objectives add roten.fe dummy "アイアンガチャコイン"
scoreboard objectives add roten.au dummy "ゴールドガチャコイン"
scoreboard objectives add roten.di dummy "ダイヤモンドガチャコイン"
scoreboard objectives add roten.pt dummy "プラチナガチャコイン"
scoreboard objectives add roten.c1 dummy "自動変換:銅"
scoreboard objectives add roten.c2 dummy "自動変換:鉄"
scoreboard objectives add roten.c3 dummy "自動変換:金"
scoreboard objectives add roten.c4 dummy "自動変換:ダイヤ"
scoreboard objectives add roten.c5 dummy "自動変換:ネザライト"
scoreboard objectives add roten.lx dummy "照準X"
scoreboard objectives add roten.ly dummy "照準Y"
scoreboard objectives add roten.lz dummy "照準Z"
scoreboard objectives add roten.la dummy "照準あり"
scoreboard objectives add roten_ui trigger "メニュー"

# 定数
scoreboard players set #16 roten.const 16
scoreboard players set #8 roten.const 8
scoreboard players set #4 roten.const 4
scoreboard players set #2 roten.const 2
scoreboard players set #1 roten.const 1

# 既定値（既存の値は保持される）
scoreboard players add #total roten.chunks 0
scoreboard players add #remain roten.chunks 0
scoreboard players add #lcx roten.chunks 0
scoreboard players add #lcz roten.chunks 0
scoreboard players add #tier roten.tier 0
scoreboard players add #started roten.sys 0
scoreboard players set #t5 roten.sys 0
scoreboard players set #t20 roten.sys 0
scoreboard players set #ta roten.sys 0

# 強化ティア定義（index = ティア番号）
data modify storage roten:main tiers set value [{n:0,name:"-"},{n:1,name:"効率強化 I"},{n:3,name:"効率強化 II"},{n:5,name:"効率強化 III"},{n:7,name:"効率強化 IV"},{n:9,name:"効率強化 V"},{n:16,name:"2x2マス掘り"},{n:25,name:"幸運 I"},{n:36,name:"幸運 II"},{n:49,name:"幸運 III"},{n:64,name:"3x3マス掘り"},{n:81,name:"4x4マス掘り"},{n:100,name:"ガチャ解放"},{n:121,name:"鉱石→コイン自動変換"},{n:144,name:"5x5マス掘り"},{n:169,name:"2秒ごと自動採掘"},{n:196,name:"1秒ごと自動採掘"},{n:225,name:"0.5秒ごと自動採掘"}]

# 掘り終わり済みチャンクの記録（無ければ作る）
execute unless data storage roten:main done run data modify storage roten:main done set value []

# 判定用の「完全な空気」参照領域を用意する
function roten:init_ref
schedule function roten:init_ref 40t replace

function roten:upgrade/labels
