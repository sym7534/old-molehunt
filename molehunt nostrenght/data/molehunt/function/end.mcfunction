execute if score Moles Alive matches 0 run title @a title {"text":"Innocents Win!","color":"green"}
execute if score Innocents Alive matches 0 run title @a title {"text":"Moles Win!","color":"red"}

execute unless score Innocents Alive matches 0 unless score Moles Alive matches 0 run title @a title {"text":"Innocents Win!","color":"green"}

scoreboard objectives remove Alive
scoreboard objectives remove Deaths
scoreboard objectives remove Timer
scoreboard objectives remove Molehunt
team leave @a
team remove mole
team remove inno
team remove spec

gamemode survival @a

worldborder set 59999968

gamerule announceAdvancements true
gamerule showDeathMessages true