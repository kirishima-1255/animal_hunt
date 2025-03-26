#火薬の数をscoreboardに記録する
execute as @a[team=animal] store result score @s GunpowderCount5 run clear @s gunpowder[minecraft:custom_data= {GunpowderCount5: 1}] 0
#火薬がある場合は火薬を減らす
execute as @a[team=animal,scores={GunpowderCount5=2..}] run clear @s gunpowder[minecraft:custom_data= {GunpowderCount5: 1}] 1
#火薬がない場合はBeaconを付与する
execute as @a[scores={GunpowderCount5=..1},team=animal] run item replace entity @s hotbar.5 with minecraft:chain[custom_name='"花火"',consumable={consume_seconds:0.1,sound:"entity.firework_rocket.launch",animation:"none",has_consume_particles:false},custom_data= {GunpowderCount5: 1},minecraft:custom_model_data={strings:['fireworks_taunts']}]
