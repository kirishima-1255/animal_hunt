advancement revoke @s only kirishima:items/use_beacon_taunts
tellraw @s {"text":"位置情報を公開した！ 10ポイント獲得","color":"gold"}

#各アイテムのコードを記載
execute as @s run scoreboard players add @s getpoint 10
execute as @s store result score @s X run data get entity @s Pos[0] 1.0
execute as @s store result score @s Y run data get entity @s Pos[1] 1.0
execute as @s store result score @s Z run data get entity @s Pos[2] 1.0
execute as @s run effect give @s speed 5 3
execute as @s run tellraw @a ["",{"selector":"@s"},{"text":"は今，"},{"score":{"name":"@s","objective":"X"}},{"text":", "},{"score":{"name":"@s","objective":"Y"}},{"text":", "},{"score":{"name":"@s","objective":"Z"}},{"text":"にいます！"}]
execute as @s run item replace entity @s hotbar.7 with gunpowder[minecraft:custom_data= {GunpowderCount7: 1},custom_name='"ビーコンはクールダウン中"'] 20
execute as @a store result score @s GunpowderCount7 run clear @s gunpowder[minecraft:custom_data= {GunpowderCount7: 1}] 0