# ゲームを開始する
scoreboard players set #GAME_STATE ah.game_status 2

# ゲーム開始時のサウンドを再生
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

# タイトルの表示
title @a title {"text":"ゲーム開始！","color":"gold"}

# チームに所属していない場合のメッセージ（オプション）
execute as @a[team=] run tellraw @s {"text":"あなたはチームに所属していません！","color":"red"}

function kirishima:animal_hunt/timekeeper/start_timer