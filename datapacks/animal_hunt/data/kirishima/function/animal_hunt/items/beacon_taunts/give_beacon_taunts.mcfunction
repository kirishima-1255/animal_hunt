#火薬の数をscoreboardに記録する
execute as @a[team=animal] store result score @s GunpowderCount7 run clear @s gunpowder[minecraft:custom_data= {GunpowderCount7: 1}] 0
#火薬がある場合は火薬を減らす
execute as @a[team=animal,scores={GunpowderCount7=2..}] run clear @s gunpowder[minecraft:custom_data= {GunpowderCount7: 1}] 1
#火薬がない場合はBeaconを付与する
execute as @a[scores={GunpowderCount7=..1},team=animal] run item replace entity @s hotbar.7 with beacon[consumable={consume_seconds:0.1,sound:"entity.lightning_bolt.thunder",animation:"none",has_consume_particles:false},custom_data= {GunpowderCount7: 1}]
