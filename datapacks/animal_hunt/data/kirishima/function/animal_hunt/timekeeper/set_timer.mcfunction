#タイマーの時間の設定

#タイマーをセットさせる
tellraw @s ["",{"text":"ゲーム時間を選択してください","color":"green"}]

tellraw @s ["",{"text":"40秒","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[tag=DummyPlayer] time 40"}}]
tellraw @s ["",{"text":"5分","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[tag=DummyPlayer] time 300"}}]
tellraw @s ["",{"text":"10分","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[tag=DummyPlayer] time 600"}}]
tellraw @s ["",{"text":"15分","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[tag=DummyPlayer] time 900"}}]

tellraw @p {"text":"[メインメニューに戻る]","color":"yellow","clickEvent":{"action":"run_command","value":"/function kirishima:animal_hunt/menu/main_menu"}}