kill @e[type=!player,type=!armor_stand]
kill @e[type=!player,type=!armor_stand]
scoreboard objectives add summon_mobs_status dummy
scoreboard players set @s ah.animal_status 200
execute as @s run function kirishima:animal_hunt/setup/summon
scoreboard objectives remove summon_mobs_status
execute as @e[team=animal,type=!player] run attribute @s minecraft:max_health base set 1024