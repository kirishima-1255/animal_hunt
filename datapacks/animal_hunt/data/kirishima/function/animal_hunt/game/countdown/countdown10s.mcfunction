
# 10秒前の音を再生
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
title @a actionbar {"text":"10秒後にゲームを開始します","color":"yellow"}
#
schedule function kirishima:animal_hunt/game/countdown/countdown5s 5s
schedule function kirishima:animal_hunt/game/countdown/countdown4s 6s
schedule function kirishima:animal_hunt/game/countdown/countdown3s 7s
schedule function kirishima:animal_hunt/game/countdown/countdown2s 8s
schedule function kirishima:animal_hunt/game/countdown/countdown1s 9s