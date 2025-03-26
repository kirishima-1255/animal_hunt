# 現在の位置に選択された動物を召喚する関数

# # AIなしの動物を召喚
# execute if score #ai ah.random matches 2 if score #animal_type ah.random matches 1 run summon chicken ~ ~ ~ {Team:"animal",NoAI:true,Health:30,Health:30}
# execute if score #ai ah.random matches 2 if score #animal_type ah.random matches 2 run summon cat ~ ~ ~ {Team:"animal",NoAI:true,Health:30}
# execute if score #ai ah.random matches 2 if score #animal_type ah.random matches 3 run summon pig ~ ~ ~ {Team:"animal",NoAI:true,Health:30}
# execute if score #ai ah.random matches 2 if score #animal_type ah.random matches 4 run summon sheep ~ ~ ~ {Team:"animal",NoAI:true,Health:30}
# execute if score #ai ah.random matches 2 if score #animal_type ah.random matches 5 run summon cow ~ ~ ~ {Team:"animal",NoAI:true,Health:30}
# execute if score #ai ah.random matches 2 if score #animal_type ah.random matches 6 run summon donkey ~ ~ ~ {Team:"animal",NoAI:true,Health:30,Tame:false,attributes:[{id:"entity_interaction_range",base:0.1}]}
# execute if score #ai ah.random matches 2 if score #animal_type ah.random matches 7 run summon horse ~ ~ ~ {Team:"animal",NoAI:true,Health:30,Tame:false,attributes:[{id:"entity_interaction_range",base:0.1}]}

# AIあり→なしの動物を召喚
execute if score #ai ah.random matches 0..2 if score #animal_type ah.random matches 1 run summon chicken ~ ~ ~ {Team:"animal",NoAI:false,Health:30}
execute if score #ai ah.random matches 0..2 if score #animal_type ah.random matches 2 run summon cat ~ ~ ~ {Team:"animal",NoAI:false,Health:30}
execute if score #ai ah.random matches 0..2 if score #animal_type ah.random matches 3 run summon pig ~ ~ ~ {Team:"animal",NoAI:false,Health:30}
execute if score #ai ah.random matches 0..2 if score #animal_type ah.random matches 4 run summon sheep ~ ~ ~ {Team:"animal",NoAI:false,Health:30}
execute if score #ai ah.random matches 0..2 if score #animal_type ah.random matches 5 run summon cow ~ ~ ~ {Team:"animal",NoAI:false,Health:30}
execute if score #ai ah.random matches 0..2 if score #animal_type ah.random matches 6 run summon donkey ~ ~ ~ {Team:"animal",NoAI:false,Health:30,Tame:false,attributes:[{id:"entity_interaction_range",base:0.1}]}
execute if score #ai ah.random matches 0..2 if score #animal_type ah.random matches 7 run summon horse ~ ~ ~ {Team:"animal",NoAI:false,Health:30,Tame:false,attributes:[{id:"entity_interaction_range",base:0.1}]}

# # AIありの動物を召喚
# execute if score #ai ah.random matches 0..1 if score #animal_type ah.random matches 1 run summon chicken ~ ~ ~ {Team:"animal",NoAI:false,Health:30}
# execute if score #ai ah.random matches 0..1 if score #animal_type ah.random matches 2 run summon cat ~ ~ ~ {Team:"animal",NoAI:false,Health:30}
# execute if score #ai ah.random matches 0..1 if score #animal_type ah.random matches 3 run summon pig ~ ~ ~ {Team:"animal",NoAI:false,Health:30}
# execute if score #ai ah.random matches 0..1 if score #animal_type ah.random matches 4 run summon sheep ~ ~ ~ {Team:"animal",NoAI:false,Health:30}
# execute if score #ai ah.random matches 0..1 if score #animal_type ah.random matches 5 run summon cow ~ ~ ~ {Team:"animal",NoAI:false,Health:30}
# execute if score #ai ah.random matches 0..1 if score #animal_type ah.random matches 6 run summon donkey ~ ~ ~ {Team:"animal",NoAI:false,Health:30,Tame:false,attributes:[{id:"entity_interaction_range",base:0.1}]}
# execute if score #ai ah.random matches 0..1 if score #animal_type ah.random matches 7 run summon horse ~ ~ ~ {Team:"animal",NoAI:false,Health:30,Tame:false,attributes:[{id:"entity_interaction_range",base:0.1}]}