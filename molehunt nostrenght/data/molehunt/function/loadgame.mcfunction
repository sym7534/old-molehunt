team add inno
team add mole
team add spec

team modify inno nametagVisibility never
team modify mole nametagVisibility never


scoreboard objectives add Deaths deathCount

scoreboard players set @a Deaths 0

scoreboard objectives add Alive dummy

scoreboard players set @a Alive 1

team leave @a

scoreboard objectives add Timer dummy
scoreboard players set ticks Timer 0
scoreboard players set seconds Timer 0
scoreboard players set minutes Timer 45
scoreboard players set hours Timer 0

scoreboard objectives add Molehunt dummy
scoreboard players set start Molehunt 0

time set day


gamerule show_advancement_messages false
gamerule show_death_messages false