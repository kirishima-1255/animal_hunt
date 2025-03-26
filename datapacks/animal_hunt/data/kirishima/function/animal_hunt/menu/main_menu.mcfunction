
tellraw @a {"text":"[初期化する]","color":"yellow","clickEvent":{"action":"run_command","value":"/reload"}}
tellraw @a {"text":"マップ中央に移動し，[ボタン]を押してください","color":"yellow","clickEvent":{"action":"run_command","value":"/function kirishima:animal_hunt/setup/game_setup"}}
tellraw @a {"text":"[クリックでゲーム開始メニューを表示]","color":"yellow","clickEvent":{"action":"run_command","value":"/function kirishima:animal_hunt/menu/main_menu"}}
tellraw @a {"text":"[ゲーム開始]","color":"yellow","clickEvent":{"action":"run_command","value":"/function kirishima:animal_hunt/game/start"}}