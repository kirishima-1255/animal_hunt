advancement revoke @s only kirishima:items/use_fireworks_taunts
tellraw @s {"text":"花火を打ち上げた！ 5ポイント獲得","color":"gold"}

#各アイテムのコードを記載
execute as @s run scoreboard players add @s getpoint 5
execute as @s run summon firework_rocket ~ ~2 ~ {Motion:[0d,0.4d,0d],LifeTime:10,Air:300s,Fire:-1s,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"fireworks":{explosions:[{colors:[I;5622785],fade_colors:[I;2437522],shape:"small_ball",has_trail:true,has_twinkle:true}],flight_duration:3}}}}
execute as @s run item replace entity @s hotbar.5 with gunpowder[minecraft:custom_data= {GunpowderCount5: 1},custom_name='"花火はクールダウン中"'] 10
execute as @a store result score @s GunpowderCount5 run clear @s gunpowder[minecraft:custom_data= {GunpowderCount5: 1}] 0
