#死亡確認用
execute store result score §b動物 TeamCount if entity @a[team=animal]
execute store result score a ah.count if entity @a[team=animal]
execute store result score §dハンター TeamCount if entity @a[team=hunter]
execute as @a[scores={Death=1..},team=animal] run function kirishima:animal_hunt/game/death_check

#変身用
execute as @a[team=animal] run function kirishima:animal_hunt/animal_wand/mimic

#アイテムを破棄不可能に
execute as @e[type=item,name=!"う◯ち"] run data modify entity @s PickupDelay set value 0s
