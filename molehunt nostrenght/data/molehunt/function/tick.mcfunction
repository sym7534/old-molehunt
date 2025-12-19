execute as @a[scores={Deaths=1}] run team join spec @s
gamemode spectator @a[team=spec]
execute store result score Moles Alive run team list mole
execute store result score Innocents Alive run team list inno

execute if score start Molehunt matches 1 if score Moles Alive matches 0 run function molehunt:endgame
execute if score start Molehunt matches 1 if score Innocents Alive matches 0 run function molehunt:endgame

execute if score start Molehunt matches 1 run scoreboard players add ticks Timer 1

execute if score ticks Timer matches 20.. run scoreboard players remove seconds Timer 1
execute if score ticks Timer matches 20 run scoreboard players set ticks Timer 0

execute if score seconds Timer matches ..-1 if score minutes Timer matches 0.. run scoreboard players remove minutes Timer 1
execute if score seconds Timer matches ..-1 if score minutes Timer matches 0.. run scoreboard players set seconds Timer 59
execute if score seconds Timer matches ..-1 if score hours Timer matches 1.. run scoreboard players set seconds Timer 59

execute if score minutes Timer matches ..-1 if score hours Timer matches 0.. run scoreboard players remove hours Timer 1
execute if score minutes Timer matches ..-1 if score hours Timer matches 0.. run scoreboard players set minutes Timer 59


execute if score hours Timer matches 10.. run scoreboard players reset hours2 Timer
execute if score minutes Timer matches 10.. run scoreboard players reset minutes2 Timer
execute if score seconds Timer matches 10.. run scoreboard players reset seconds2 Timer
execute unless score hours Timer matches 10.. run scoreboard players set hours2 Timer 0
execute unless score minutes Timer matches 10.. run scoreboard players set minutes2 Timer 0
execute unless score seconds Timer matches 10.. run scoreboard players set seconds2 Timer 0

execute if score start Molehunt matches 1 run title @a[team=mole] actionbar [{"score":{"name":"hours2","objective":"Timer"},"color":"red"},{"score":{"name":"hours","objective":"Timer"},"color":"red"},":",{"score":{"name":"minutes2","objective":"Timer"},"color":"red"},{"score":{"name":"minutes","objective":"Timer"},"color":"red"},":",{"score":{"name":"seconds2","objective":"Timer"},"color":"red"},{"score":{"name":"seconds","objective":"Timer"},"color":"red"}]

execute if score start Molehunt matches 1 run title @a[team=inno] actionbar [{"score":{"name":"hours2","objective":"Timer"},"color":"green"},{"score":{"name":"hours","objective":"Timer"},"color":"green"},":",{"score":{"name":"minutes2","objective":"Timer"},"color":"green"},{"score":{"name":"minutes","objective":"Timer"},"color":"green"},":",{"score":{"name":"seconds2","objective":"Timer"},"color":"green"},{"score":{"name":"seconds","objective":"Timer"},"color":"green"}]

execute if score start Molehunt matches 1 run title @a[team=spec] actionbar [{"score":{"name":"hours2","objective":"Timer"},"color":"green"},{"score":{"name":"hours","objective":"Timer"},"color":"green"},":",{"score":{"name":"minutes2","objective":"Timer"},"color":"green"},{"score":{"name":"minutes","objective":"Timer"},"color":"green"},":",{"score":{"name":"seconds2","objective":"Timer"},"color":"green"},{"score":{"name":"seconds","objective":"Timer"},"color":"green"}]

execute if score start Molehunt matches 0 run title @a actionbar ""
execute if score seconds Timer matches 0 if score minutes Timer matches 0 if score hours Timer matches 0 run function molehunt:endgame