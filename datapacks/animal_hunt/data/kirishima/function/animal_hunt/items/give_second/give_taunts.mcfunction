#毎秒ごとにクールタイムを1減らす
execute as @r run function kirishima:animal_hunt/items/beacon_taunts/give_beacon_taunts
execute as @r run function kirishima:animal_hunt/items/fireworks_taunts/give_fireworks_taunts
execute as @r run function kirishima:animal_hunt/items/safe_taunts/give_safe_taunts
execute as @r run function kirishima:animal_hunt/items/sheep_tnt/give_sheep
execute as @r run schedule function kirishima:animal_hunt/items/give_second/give_taunts 1s
