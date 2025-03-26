#1:chicken 2:cat 3:pig 4:sheep 5:cow 6:donkey 7:horse
execute as @s if predicate kirishima:looking_at/looking_at_chicken run scoreboard players set @s ah.animal_status 1
execute as @s if predicate kirishima:looking_at/looking_at_cat run scoreboard players set @s ah.animal_status 2
execute as @s if predicate kirishima:looking_at/looking_at_pig run scoreboard players set @s ah.animal_status 3
execute as @s if predicate kirishima:looking_at/looking_at_sheep run scoreboard players set @s ah.animal_status 4
execute as @s if predicate kirishima:looking_at/looking_at_cow run scoreboard players set @s ah.animal_status 5
execute as @s if predicate kirishima:looking_at/looking_at_donkey run scoreboard players set @s ah.animal_status 6
execute as @s if predicate kirishima:looking_at/looking_at_horse run scoreboard players set @s ah.animal_status 7
advancement revoke @s only kirishima:items/use_wand

#変身棒付与
schedule function kirishima:animal_hunt/animal_wand/give_wand 2t

#モブごとに視点変更
execute as @s if score @s ah.animal_status matches 6..7 run attribute @s scale base set 1.8
execute as @s if score @s ah.animal_status matches 4..5 run attribute @s scale base set 1.1
execute as @s if score @s ah.animal_status matches 3 run attribute @s scale base set 1.1
execute as @s unless score @s ah.animal_status matches 3..7 run attribute @s scale base set 1
execute as @s if score @s ah.animal_status matches 6..7 run attribute @s minecraft:jump_strength base set 0.70
execute as @s unless score @s ah.animal_status matches 6..7 run attribute @s minecraft:jump_strength base set 0.42

#モブごとに頭をスロット8に配置
execute as @s if score @s ah.animal_status matches 1 run item replace entity @s hotbar.2 with player_head[minecraft:profile="mhf_chicken",custom_name='"あなたは今[ニワトリ]です"']
execute as @s if score @s ah.animal_status matches 2 run item replace entity @s hotbar.2 with player_head[minecraft:profile="MHF_Ocelot",custom_name='"あなたは今[ネコ]です"']
execute as @s if score @s ah.animal_status matches 3 run item replace entity @s hotbar.2 with player_head[minecraft:profile="MHF_Pig",custom_name='"あなたは今[ブタ]です"']
execute as @s if score @s ah.animal_status matches 4 run item replace entity @s hotbar.2 with player_head[minecraft:profile="MHF_Sheep",custom_name='"あなたは今[ヒツジ]です"']
execute as @s if score @s ah.animal_status matches 5 run item replace entity @s hotbar.2 with player_head[minecraft:profile="MHF_Cow",custom_name='"あなたは今[ウシ]です"']
execute as @s if score @s ah.animal_status matches 6 run item replace entity @s hotbar.2 with player_head[minecraft:profile="mhf_horse",custom_name='"あなたは今[ロバ]です"']
execute as @s if score @s ah.animal_status matches 7 run item replace entity @s hotbar.2 with player_head[minecraft:profile="mhf_horse",custom_name='"あなたは今[ウマ]です"']

#actionbarに表示
execute as @s if score @s ah.animal_status matches 1 run title @s actionbar {"text":"あなたは今","color":"white","extra":[{"text":"[ニワトリ]","color":"yellow"},{"text":"です","color":"white"}]}
execute as @s if score @s ah.animal_status matches 2 run title @s actionbar {"text":"あなたは今","color":"white","extra":[{"text":"[ネコ]","color":"yellow"},{"text":"です","color":"white"}]}
execute as @s if score @s ah.animal_status matches 3 run title @s actionbar {"text":"あなたは今","color":"white","extra":[{"text":"[ブタ]","color":"yellow"},{"text":"です","color":"white"}]}
execute as @s if score @s ah.animal_status matches 4 run title @s actionbar {"text":"あなたは今","color":"white","extra":[{"text":"[ヒツジ]","color":"yellow"},{"text":"です","color":"white"}]}
execute as @s if score @s ah.animal_status matches 5 run title @s actionbar {"text":"あなたは今","color":"white","extra":[{"text":"[ウシ]","color":"yellow"},{"text":"です","color":"white"}]}
execute as @s if score @s ah.animal_status matches 6 run title @s actionbar {"text":"あなたは今","color":"white","extra":[{"text":"[ロバ]","color":"yellow"},{"text":"です","color":"white"}]}
execute as @s if score @s ah.animal_status matches 7 run title @s actionbar {"text":"あなたは今","color":"white","extra":[{"text":"[ウマ]","color":"yellow"},{"text":"です","color":"white"}]}
