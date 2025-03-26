execute as @a[scores={Death=1..},team=animal] run attribute @s minecraft:max_health base set 16
execute as @a[scores={Death=1..},team=animal] run team leave @s
execute as @a[scores={Death=1..},team=] run tellraw @a [{"selector":"@s"},{"text":"がハンターになりました","color":"red"}]
execute as @a[scores={Death=1..},team=] run clear @s
execute as @a[scores={Death=1..},team=] run function kirishima:animal_hunt/items/give_second/give_sword
execute as @a[scores={Death=1..},team=] run team join hunter
# execute as @a[scores={Death=1..},team=hunter] run scoreboard players set @s ah.hp 0
execute as @a[scores={Death=1..},team=hunter] run attribute @s scale base set 1
execute as @a[team=animal] run attribute @s minecraft:entity_interaction_range base set 4.5
execute as @a[scores={Death=1..},team=hunter] run scoreboard players set @s Death 0


