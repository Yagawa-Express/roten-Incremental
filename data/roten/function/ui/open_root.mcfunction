data modify storage roten:ui root_actions set value [{label:{text:"ツルハシ強化ツリー！",color:"aqua"},width:250,action:{type:"minecraft:run_command",command:"trigger roten_ui set 2"}}]
data modify storage roten:tmp luck set from storage roten:ui luck
function roten:ui/root_luck with storage roten:tmp
execute if score #tier roten.tier matches 13.. run data modify storage roten:ui root_actions append value {label:{text:"鉱石自動変換の設定",color:"gold"},width:250,action:{type:"minecraft:run_command",command:"trigger roten_ui set 7"}}

execute store result storage roten:tmp n int 1 run scoreboard players get #total roten.chunks
execute store result storage roten:tmp r int 1 run scoreboard players get #remain roten.chunks
function roten:ui/root_body with storage roten:tmp

data modify storage roten:tmp dlg set value {type:"minecraft:multi_action",title:{text:"露天インクリメンタル",color:"gold",bold:true},external_title:"露天インクリメンタル",can_close_with_escape:true,columns:1,body:[],actions:[]}
data modify storage roten:tmp dlg.body set from storage roten:tmp body
data modify storage roten:tmp dlg.actions set from storage roten:ui root_actions
function roten:ui/show with storage roten:tmp
