clear @a[team=animal]
execute as @a[team=animal] run attribute @s minecraft:max_health base set 30
#HPを最大に
effect give @e minecraft:regeneration 2 10
function kirishima:animal_hunt/items/give_second/give_taunts
execute as @a[team=animal] run function kirishima:animal_hunt/animal_wand/give_wand

execute as @a[team=animal] run attribute @s minecraft:entity_interaction_range base set 0
item replace entity @a[team=animal] hotbar.1 with bow[unbreakable={show_in_tooltip: false},enchantments={power:1,punch:3,"kirishima:is_attck_player":1},custom_model_data={strings:["animal_bow"]}]
item replace entity @a[team=animal] hotbar.8 with arrow 5
execute as @a[team=hunter] run tellraw @s {"text":"あなたはハンターチームです！20秒後に解き放たれます","color":"red"}