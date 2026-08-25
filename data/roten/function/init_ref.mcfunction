# チャンク走査（execute if blocks ... masked）の比較先として使う空気だけの領域。
# ワールドの遠く離れた 1 チャンクを強制読み込みし、16x16x120 を空気で埋めておく。
forceload add -30000 -30000
fill -30000 -58 -30000 -29985 61 -29985 minecraft:air
