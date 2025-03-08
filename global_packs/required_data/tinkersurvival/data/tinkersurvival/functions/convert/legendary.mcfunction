# MobCaptains v3.1.1 by PuckiSilver
attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.max_health 2.7 multiply
attribute @s minecraft:generic.armor modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.armor 15 add
attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.movement_speed 0.8 multiply
attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.attack_damage 3 multiply
attribute @s minecraft:generic.knockback_resistance modifier add 15213119-0002-0002-0002-000000000002 tinkersurvival.knockback_resistance 1 add
tag @s add tinkersurvival.legendary
team join tinkersurvival.legendary @s
data modify entity @s DeathLootTable set value "tinkersurvival:captain/legendary"
execute if score .notify_on_spawn tinkersurvival.config matches 1.. at @s run tellraw @a[distance=..128] ["", {"text": "\u2620", "color": "red"}, {"text": " A ", "color": "white"}, {"text": "l", "color": "#ff5151"}, {"text": "e", "color": "#ffb74d"}, {"text": "g", "color": "#ffff87"}, {"text": "e", "color": "#51ff51"}, {"text": "n", "color": "#4d4dff"}, {"text": "d", "color": "#9933cc"}, {"text": "a", "color": "#cc66cc"}, {"text": "r", "color": "#cc00cc"}, {"text": "y", "color": "#ff87ff"}, {"text": " Mob Captain", "color": "red"}, {"text": " has spawned nearby!", "color": "white"}]
execute if score .notify_on_spawn tinkersurvival.config matches 1.. if score .notify_with_sound tinkersurvival.config matches 1 at @s run playsound entity.wither.spawn ambient @a[distance=..128] ~ ~ ~ 0.5 1.8 0.5
execute if score .beam_on_spawn tinkersurvival.config matches 1 at @s run particle dust 10 10 10 5 ~ ~ ~ 0 200 0 0 300 force
effect give @s glowing 1000000 0 true
function tinkersurvival:convert/captain
# MobCaptains v3.1.1 by PuckiSilver
