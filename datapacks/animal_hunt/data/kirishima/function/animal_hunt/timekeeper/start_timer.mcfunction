# 「my:time」ボスバーを全員に見せる
bossbar set my:time players @a
# ボスバーを青色で表示する
bossbar set my:time color blue
# 「DummyPlayer」の「time」のスコアをとってきて「my:time」ボスバーのmax(ゲージの最大値)を指定する。
execute store result bossbar my:time max run scoreboard players get @e[tag=DummyPlayer,limit=1] time
# タイマーをつける
function kirishima:animal_hunt/timekeeper/timer