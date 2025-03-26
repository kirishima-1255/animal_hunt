# 動物をランダムに1体召喚する関数

# ランダムな座標を生成（半径200マス以内）
execute store result score #x ah.random run random value -200..200
execute store result score #y ah.random run random value 0..10
execute store result score #z ah.random run random value -200..200

# ランダムな動物の種類を選択（1-7の範囲）
execute store result score #animal_type ah.random run random value 1..7

# ランダムなAI設定（0または1）
execute store result score #ai ah.random run random value 0..1

# 座標に基づいて動物を召喚
execute if score #ai ah.random matches 0 run function kirishima:animal_hunt/setup/summon_no_ai
execute if score #ai ah.random matches 1 run function kirishima:animal_hunt/setup/summon_with_ai