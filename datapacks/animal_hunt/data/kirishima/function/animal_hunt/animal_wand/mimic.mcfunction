#1:chicken 2:cat 3:pig 4:sheep 5:cow 6:donkey 7:horse
execute as @p at @s anchored feet if score @s ah.animal_status matches 1 run tp @n[type=chicken,distance=..20] @s
execute as @p at @s anchored feet if score @s ah.animal_status matches 2 run tp @n[type=cat,distance=..20] @s
execute as @p at @s anchored feet if score @s ah.animal_status matches 3 run tp @n[type=pig,distance=..20] @s
execute as @p at @s anchored feet if score @s ah.animal_status matches 4 run tp @n[type=sheep,distance=..20] @s
execute as @p at @s anchored feet if score @s ah.animal_status matches 5 run tp @n[type=cow,distance=..20] @s
execute as @p at @s anchored feet if score @s ah.animal_status matches 6 run tp @n[type=donkey,distance=..20] @s
execute as @p at @s anchored feet if score @s ah.animal_status matches 7 run tp @n[type=horse,distance=..20] @s
#変身時，体を隠す
execute as @s unless score @s ah.animal_status matches 0 run effect give @s[team=animal] invisibility 1 1 true