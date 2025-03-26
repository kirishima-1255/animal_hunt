advancement revoke @s only kirishima:items/use_sheep
tellraw @s {"text":"羊爆弾を使用","color":"gold"}

#各アイテムのコードを記載
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Small:1b,Tags:["sheep_tnt"]}
summon sheep ~ ~ ~ {NoAI:1b,Health:200,Color:14}
scoreboard players set @n[type=armor_stand] explode_time 0
schedule function kirishima:animal_hunt/items/sheep_tnt/sheep_color_to_white_0 5t
schedule function kirishima:animal_hunt/items/sheep_tnt/sheep_color_to_red_1 10t
schedule function kirishima:animal_hunt/items/sheep_tnt/sheep_color_to_white_2 15t
schedule function kirishima:animal_hunt/items/sheep_tnt/sheep_color_to_red_3 20t
schedule function kirishima:animal_hunt/items/sheep_tnt/sheep_color_to_white_4 25t
schedule function kirishima:animal_hunt/items/sheep_tnt/sheep_color_to_red_5 30t
schedule function kirishima:animal_hunt/items/sheep_tnt/sheep_color_to_white_6 35t
schedule function kirishima:animal_hunt/items/sheep_tnt/sheep_color_to_red_7 40t
schedule function kirishima:animal_hunt/items/sheep_tnt/sheep_color_to_white_8 45t
schedule function kirishima:animal_hunt/items/sheep_tnt/explode_all 50t
execute as @s run item replace entity @s hotbar.2 with gunpowder[minecraft:custom_data= {GunpowderCount2: 1},custom_name='"羊爆弾はクールダウン中"'] 15
execute as @a store result score @s GunpowderCount2 run clear @s gunpowder[minecraft:custom_data= {GunpowderCount2: 1}] 0
