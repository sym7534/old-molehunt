title @a[team=mole] title {"text":"The Mole.","color":"red","bold":true}
title @a[team=inno] title {"text":"NOT The Mole.","color":"green","bold":true}
tellraw @a[team=mole] ["",{"text":"You are a mole! The other moles are ","color":"red"},{"selector":"@a[team=mole]","color":"red"}]
scoreboard players set start Molehunt 1
