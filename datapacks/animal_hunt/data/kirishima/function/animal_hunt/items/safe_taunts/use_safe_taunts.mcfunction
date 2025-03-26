advancement revoke @s only kirishima:items/use_safe_taunts
tellraw @s {"text":"う◯ちをした！ 1ポイント獲得","color":"gold"}

#各アイテムのコードを記載
summon item ~ ~ ~ {Item:{id:"minecraft:cocoa_beans"},CustomName:'{"text":"う◯ち"}',PickupDelay:32767,Age:60000,CustomNameVisible:1b}



execute as @s run scoreboard players add @s getpoint 1
execute as @s run item replace entity @s hotbar.3 with gunpowder[minecraft:custom_data= {GunpowderCount3: 1},custom_name='"砂糖はクールダウン中"'] 5
execute as @a store result score @s GunpowderCount3 run clear @s gunpowder[minecraft:custom_data= {GunpowderCount3: 1}] 0