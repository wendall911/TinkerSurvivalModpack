# MobCaptains v3.1.1 by PuckiSilver
schedule function tinkersurvival:register/tick_1s 1s replace
execute if score .cool_down tinkersurvival matches 1.. run scoreboard players remove .cool_down tinkersurvival 1
execute unless score .cool_down tinkersurvival matches 1.. as @e[type=#tinkersurvival:captains, tag=!tinkersurvival, tag=!smithed.entity] run function tinkersurvival:register/check_mob
tag @e[type=#tinkersurvival:captains, tag=!tinkersurvival, tag=!smithed.entity] add tinkersurvival
# MobCaptains v3.1.1 by PuckiSilver
