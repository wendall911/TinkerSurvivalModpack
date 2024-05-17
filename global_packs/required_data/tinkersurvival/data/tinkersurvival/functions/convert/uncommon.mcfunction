# MobCaptains v2.1.2 by PuckiSilver
attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.max_health 0.9 multiply
attribute @s minecraft:generic.armor modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.armor 4 add
attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.movement_speed 0.25 multiply
attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.attack_damage 1.2 multiply
attribute @s minecraft:generic.knockback_resistance modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.knockback_resistance 0.1 add
tag @s add tinkersurvival.uncommon
team join tinkersurvival.uncommon @s
data modify entity @s DeathLootTable set value "tinkersurvival:captain/uncommon"
execute if score .notify_on_spawn tinkersurvival.config matches 3.. at @s run tellraw @a[distance=..128] ["", {"text": "\u2620", "color": "#00FF00"}, {"text": " An ", "color": "white"}, {"text": "uncommon Mob Captain", "color": "#00FF00"}, {"text": " has spawned nearby!", "color": "white"}]
execute if score .notify_on_spawn tinkersurvival.config matches 3.. if score .notify_with_sound tinkersurvival.config matches 1 at @s run playsound entity.wither.spawn ambient @a[distance=..128] ~ ~ ~ 0.5 1.8 0.5
execute if score .beam_on_spawn tinkersurvival.config matches 1 at @s run particle dust 0 1 0 5 ~ ~ ~ 0 200 0 0 300 force
function tinkersurvival:convert/captain
# MobCaptains v2.1.2 by PuckiSilver
