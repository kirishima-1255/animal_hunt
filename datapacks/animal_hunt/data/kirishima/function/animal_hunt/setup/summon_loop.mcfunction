# 動物召喚のループ処理

# ランダムな座標を生成（半径200マス以内）
execute at @s run summon marker ~ ~ ~ {Tags:["ah.pos"]}
execute as @e[type=marker,tag=ah.pos,limit=1] at @s run spreadplayers ~ ~ 0 200 false @s

# ランダムな動物の種類とAI設定を選択
execute store result score #animal_type ah.random run random value 1..7
execute store result score #ai ah.random run random value 0..2

# 座標に基づいて動物を召喚
execute at @e[type=marker,tag=ah.pos,limit=1] run function kirishima:animal_hunt/setup/summon_animal

# マーカーを削除
kill @e[type=marker,tag=ah.pos]

# カウンターを増加
scoreboard players add #count ah.count 1

# カウンターが7000未満の場合、ループを続ける
execute if score #count ah.count matches ..15999 run function kirishima:animal_hunt/setup/summon_loop