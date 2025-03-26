#火薬の数をscoreboardに記録する
execute as @a[team=hunter] store result score @s GunpowderCount2 run clear @s gunpowder[minecraft:custom_data= {GunpowderCount2: 1}] 0
#火薬がある場合は火薬を減らす
execute as @a[team=hunter,scores={GunpowderCount2=2..}] run clear @s gunpowder[minecraft:custom_data= {GunpowderCount2: 1}] 1
#火薬がない場合はBeaconを付与する
execute as @a[scores={GunpowderCount2=..1},team=hunter] run item replace entity @s hotbar.2 with minecraft:redstone[custom_name='"羊爆弾"',consumable={consume_seconds:0.1,sound:"entity.creeper.hurt",animation:"none",has_consume_particles:false},custom_data= {GunpowderCount2: 1}]