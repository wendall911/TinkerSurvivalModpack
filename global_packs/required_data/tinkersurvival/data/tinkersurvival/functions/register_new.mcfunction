# MobCaptains v2.1.2 by PuckiSilver
schedule function tinkersurvival:register_new 1s replace
execute if score .cool_down tinkersurvival matches 1.. run scoreboard players remove .cool_down tinkersurvival 1
execute unless score .cool_down tinkersurvival matches 1.. as @e[type=#tinkersurvival:captains, tag=!tinkersurvival, tag=!smithed.entity] run function tinkersurvival:captain_check
tag @e[type=#tinkersurvival:captains, tag=!tinkersurvival, tag=!smithed.entity] add tinkersurvival
# MobCaptains v2.1.2 by PuckiSilver
