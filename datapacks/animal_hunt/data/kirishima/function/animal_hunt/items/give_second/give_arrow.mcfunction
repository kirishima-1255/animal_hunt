execute store result score @s arrow_wait run clear @s arrow
execute as @s[scores={arrow_wait=0}] run item replace entity @s hotbar.8 with arrow 1
execute as @s[scores={arrow_wait=1}] run item replace entity @s hotbar.8 with arrow 2
execute as @s[scores={arrow_wait=2}] run item replace entity @s hotbar.8 with arrow 3
execute as @s[scores={arrow_wait=3}] run item replace entity @s hotbar.8 with arrow 4
execute as @s[scores={arrow_wait=4..5}] run item replace entity @s hotbar.8 with arrow 5
execute as @a[team=animal] run scoreboard players set @s arrow_wait 0