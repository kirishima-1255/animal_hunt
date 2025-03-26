item replace entity @a[team=hunter] hotbar.0 with wooden_sword[enchantments={unbreaking:3,"kirishima:is_attck_mobs":1},unbreakable={show_in_tooltip: false}]
item replace entity @a[team=hunter] armor.chest with iron_chestplate[unbreakable={show_in_tooltip: false},enchantments={blast_protection:255}]
item replace entity @a[team=hunter] hotbar.1 with bow[unbreakable={show_in_tooltip: false},enchantments={power:1,infinity:1,"kirishima:is_attck_mobs":1},custom_model_data={strings:["hunter_bow"]}]
item replace entity @a[team=hunter] container.9 with arrow
execute as @a[team=hunter] run attribute @s minecraft:entity_interaction_range base set 4.5
execute as @a[team=hunter] run attribute @s scale base set 1
scoreboard players set @s ah.animal_status 0
