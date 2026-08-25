data modify storage roten:tmp dlg set value {type:"minecraft:multi_action",title:{text:"ツルハシ強化ツリー！",color:"aqua",bold:true},can_close_with_escape:true,columns:2,body:[{type:"minecraft:plain_message",contents:{text:"掘り終えたチャンク数で強化が解放される",color:"gray"}}],actions:[]}
data modify storage roten:tmp dlg.actions set from storage roten:ui tree_actions
function roten:ui/show with storage roten:tmp
