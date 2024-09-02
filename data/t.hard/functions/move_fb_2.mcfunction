#FireballみたいなMotionではなくpowerを使うようなものを飛ばす
#実行者が持っている"Chuz_Speed"の値によってスピード増減
#X軸
execute as @s store result score @s Chuz_Calc run data get entity @s Pos[0] 100
execute as @e[tag=pos] store result score @s Chuz_Calc run data get entity @s Pos[0] 100
execute as @s at @s positioned ^ ^ ^0.1 run scoreboard players operation @s Chuz_Calc -= @e[tag=pos,limit=1,sort=nearest] Chuz_Calc
scoreboard players operation @s Chuz_Calc *= @s Chuz_Speed
execute as @s store result entity @s power[0] double -0.003 run scoreboard players get @s Chuz_Calc

#Y軸
execute as @s store result score @s Chuz_Calc run data get entity @s Pos[1] 100
execute as @e[tag=pos] store result score @s Chuz_Calc run data get entity @s Pos[1] 100
execute as @s at @s positioned ^ ^ ^0.1 run scoreboard players operation @s Chuz_Calc -= @e[tag=pos,limit=1,sort=nearest] Chuz_Calc
scoreboard players operation @s Chuz_Calc *= @s Chuz_Speed
execute as @s store result entity @s power[1] double -0.003 run scoreboard players get @s Chuz_Calc

#Z軸
execute as @s store result score @s Chuz_Calc run data get entity @s Pos[2] 100
execute as @e[tag=pos] store result score @s Chuz_Calc run data get entity @s Pos[2] 100
execute as @s at @s positioned ^ ^ ^0.1 run scoreboard players operation @s Chuz_Calc -= @e[tag=pos,limit=1,sort=nearest] Chuz_Calc
scoreboard players operation @s Chuz_Calc *= @s Chuz_Speed
execute as @s store result entity @s power[2] double -0.003 run scoreboard players get @s Chuz_Calc
