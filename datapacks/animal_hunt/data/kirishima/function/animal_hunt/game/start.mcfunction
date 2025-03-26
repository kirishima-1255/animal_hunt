# ゲーム開始カウントダウンと開始処理
# カウントダウン開始時のメッセージ
function kirishima:animal_hunt/game/countdown/countdown10s
clear @a
#アニメーションなど
schedule function kirishima:animal_hunt/game/game_start_execute 10s
#アニマルチームの設定
schedule function kirishima:animal_hunt/game/animal/start 10s
#ハンターチームの設定
schedule function kirishima:animal_hunt/game/hunter/start 30s
