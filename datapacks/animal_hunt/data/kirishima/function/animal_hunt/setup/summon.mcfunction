# 7000体の動物を半径200マス以内にランダムに召喚する

# スコアボードを作成
scoreboard objectives add ah.random dummy
scoreboard objectives add ah.count dummy

# カウンターを初期化
scoreboard players set #count ah.count 0

# 7000回ループするコマンド
function kirishima:animal_hunt/setup/summon_loop
