# MobCaptains v3.1.1 by PuckiSilver
execute if score .should_glow tinkersurvival.config matches 1 run effect give @s glowing 1000000 0 true
tag @s add smithed.entity
tag @s add tinkersurvival.captain
scoreboard players reset #try tinkersurvival
scoreboard players reset .faliure tinkersurvival
scoreboard players operation .cool_down tinkersurvival = .cool_down tinkersurvival.config
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
# MobCaptains v3.1.1 by PuckiSilver
