say 設定を初期化しています...
#タイマー用
kill @e[type=!player]
execute if entity @e[type=minecraft:armor_stand,tag=DummyPlayer] run kill @e[type=minecraft:armor_stand,tag=DummyPlayer]
scoreboard objectives add constant dummy
scoreboard players set #60 constant 60
scoreboard players reset *
scoreboard players set #60 constant 60
execute as @r at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["DummyPlayer"],NoGravity:1b,Marker:1b,Invisible:1b}
scoreboard objectives add time dummy
bossbar add my:time {"text":"time"}
scoreboard objectives add minute dummy
scoreboard objectives add second dummy
scoreboard objectives add tmpTime dummy
scoreboard players set @e[tag=DummyPlayer] time 1
scoreboard objectives add Number_animal dummy
scoreboard objectives add Number_hunter dummy



#ゲーム状態設定用
scoreboard objectives add ah.game_status dummy
scoreboard players set #GAME_STATE ah.game_status 0
#0:ゲーム外，1:チーム分け完了，2:ゲーム中，3:ゲーム終了

# 例：ゲームルールの設定
gamerule doDaylightCycle false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule keepInventory true
effect give @a saturation infinite 1 true
gamerule naturalRegeneration false
gamerule fallDamage false
gamerule fireDamage false
gamemode adventure @a
clear @a
gamerule maxEntityCramming 0
execute as @a run attribute @s scale base set 1
execute as @a run attribute @s minecraft:jump_strength base set 0.42
gamerule doMobLoot false
gamerule mobGriefing false

#チームの設定
team add animal "動物"
team add hunter "ハンター"
team empty animal
team empty hunter
team modify animal collisionRule never
team modify animal color aqua
team modify animal friendlyFire false
team modify animal nametagVisibility never
team modify animal prefix {"text":"[動物]"}
team modify animal seeFriendlyInvisibles false
team modify hunter collisionRule never
team modify hunter color light_purple
team modify hunter deathMessageVisibility hideForOtherTeams
team modify hunter friendlyFire false
team modify hunter nametagVisibility never
team modify hunter prefix {"text":"[ハンター]"}

#アイテムクールダウンの設定
scoreboard objectives add GunpowderCount2 dummy
scoreboard objectives add GunpowderCount3 dummy
scoreboard objectives add GunpowderCount5 dummy
scoreboard objectives add GunpowderCount7 dummy
scoreboard players set @a GunpowderCount2 1
scoreboard players set @a GunpowderCount3 1
scoreboard players set @a GunpowderCount5 1
scoreboard players set @a GunpowderCount7 1

#座標表示機能の設定
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy

#ポイント
scoreboard objectives add getpoint dummy
scoreboard players set @a getpoint 0
scoreboard objectives setdisplay list getpoint

#デス数
scoreboard objectives add Death deathCount
scoreboard players set @a Death 0

#チームの人数表示
scoreboard objectives add TeamCount dummy "チーム人数"
scoreboard objectives setdisplay sidebar TeamCount
scoreboard players set §b動物 TeamCount 0
scoreboard players set §dハンター TeamCount 0
scoreboard objectives add ah.count dummy
scoreboard players set a ah.count 0

#キル数の記録
scoreboard objectives add ah.kills playerKillCount

#動物の種類を記憶
#1:chicken 2:cat 3:pig 4:sheep 5:cow 6:donkey 7:horse
scoreboard objectives add ah.animal_status dummy
scoreboard players set @a ah.animal_status 0

#矢の支給時間調整
scoreboard objectives add arrow_wait dummy
scoreboard players set @a arrow_wait 0

#動物と人間のHPを連携する
scoreboard objectives add mob_health health
scoreboard objectives add mob_prev_health dummy


#羊爆弾
scoreboard objectives add explode_time dummy
scoreboard players set @a explode_time 0

say セットアップが完了しました
tellraw @a {"text":"[初期化する]","color":"yellow","clickEvent":{"action":"run_command","value":"/reload"}}
tellraw @a {"text":"マップ中央に移動し，[ボタン]を押してください","color":"yellow","clickEvent":{"action":"run_command","value":"/function kirishima:animal_hunt/setup/game_setup"}}
tellraw @a {"text":"[クリックでゲーム開始メニューを表示]","color":"yellow","clickEvent":{"action":"run_command","value":"/function kirishima:animal_hunt/menu/time_menu"}}
tellraw @a {"text":"[ゲーム開始]","color":"yellow","clickEvent":{"action":"run_command","value":"/function kirishima:animal_hunt/game/start"}}