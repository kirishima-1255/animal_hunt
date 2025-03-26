#タイマーの処理

# 「DummyPlayer」の「time」(＝残り時間)を減らす
scoreboard players remove @e[tag=DummyPlayer] time 1

# 分、秒を計算
scoreboard players operation @e[tag=DummyPlayer] tmpTime = @e[tag=DummyPlayer] time
scoreboard players operation @e[tag=DummyPlayer] minute = @e[tag=DummyPlayer] tmpTime
scoreboard players operation @e[tag=DummyPlayer] minute /= #60 constant

scoreboard players operation @e[tag=DummyPlayer] tmpTime = @e[tag=DummyPlayer] time
scoreboard players operation @e[tag=DummyPlayer] second = @e[tag=DummyPlayer] tmpTime
scoreboard players operation @e[tag=DummyPlayer] second %= #60 constant

# ボスバーに残り時間を数字で表示する
bossbar set my:time name ["",{"text":"残り時間: ","color":"red","bold":true},{"score":{"name":"@e[tag=DummyPlayer,limit=1]","objective":"minute"},"color":"red"},{"text":":","color":"red","bold":true},{"score":{"name":"@e[tag=DummyPlayer,limit=1]","objective":"second"},"color":"red"}]

#矢を補充する
execute as @a[team=animal] run scoreboard players add @s arrow_wait 1
execute as @a[scores={arrow_wait=5}] run function kirishima:animal_hunt/items/give_second/give_arrow
# ボスバーのゲージを減らす
execute store result bossbar my:time value run scoreboard players get @e[tag=DummyPlayer,limit=1] time
# 残り時間があったら繰り返す
execute unless entity @e[tag=DummyPlayer,scores={time=0}] run schedule function kirishima:animal_hunt/timekeeper/timer 1s

# 残り10秒のカウントダウン
execute if entity @e[tag=DummyPlayer,scores={time=10}] run function kirishima:animal_hunt/timekeeper/game_end_countdown/countdown10s
# 時間切れの表示
execute if entity @e[tag=DummyPlayer,scores={time=0}] run tellraw @a {"text":"終了！","color":"red","bold":true}
execute if entity @e[tag=DummyPlayer,scores={time=0}] run title @a title {"text":"終了！","color":"red","bold":true}
execute if entity @e[tag=DummyPlayer,scores={time=0}] run execute as @a at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1 1
execute if entity @e[tag=DummyPlayer,scores={time=0}] run execute if score §b動物 TeamCount matches 1.. run schedule function kirishima:animal_hunt/game_end_animal_win 5s
execute if entity @e[tag=DummyPlayer,scores={time=0}] run execute if score §b動物 TeamCount matches 0 run schedule function kirishima:animal_hunt/game_end_hunter_win 5s
# 動物チームの生存確認
execute if score a ah.count matches 0 run function kirishima:animal_hunt/timekeeper/stop_timer
# ボスバーを消す
execute if entity @e[tag=DummyPlayer,scores={time=0}] run bossbar set my:time players