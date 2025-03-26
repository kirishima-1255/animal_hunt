# advancement revoke @s only kirishima:items/attack_mobs
execute as @p[distance=..0.5] run damage @s 6 player_attack by @p[distance=0.5..]
execute as @p[distance=0.5..] run scoreboard players add @p[distance=0.5..] getpoint 2
execute as @p[distance=0.5..] run tellraw @p[distance=0.5..] {"text":"動物チームを攻撃！ 2ポイント獲得","color":"gold"}
execute as @p run effect give @e[distance=5,type=!player] minecraft:regeneration 2 10 true
execute as @p[distance=..0.5] run particle angry_villager ~ ~1 ~
# execute as @e[type=!player,distance=..5] if score @s mob_health < @s mob_prev_health at @s run execute at @s if entity @p[distance=..16] run damage @p 6 minecraft:player_attack by @n
